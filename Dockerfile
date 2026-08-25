# ============================================================
# Space Debris Collision Risk Predictor — Render Deployment
# ============================================================

# --- Stage 1: Build frontend ---
FROM node:20-slim AS frontend-build
WORKDIR /app/frontend
COPY frontend/package.json frontend/package-lock.json* ./
RUN npm ci
COPY frontend/ ./
RUN npm run build

# --- Stage 2: Backend + serve frontend ---
FROM python:3.12-slim
WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc g++ && \
    rm -rf /var/lib/apt/lists/*

# CPU-only torch (fits Render free 512 MB RAM)
COPY backend/requirements.txt ./backend/requirements.txt
RUN pip install --no-cache-dir torch --index-url https://download.pytorch.org/whl/cpu && \
    pip install --no-cache-dir -r backend/requirements.txt && \
    pip install --no-cache-dir huggingface_hub

COPY backend/ ./backend/
COPY training/ ./training/
COPY data/processed/ ./data/processed/
COPY data/raw/catalog.csv ./data/raw/catalog.csv
COPY download_models.py ./

COPY --from=frontend-build /app/frontend/dist ./frontend/dist

ENV PORT=10000
EXPOSE ${PORT}

# Download models at startup so they land on Render's persistent disk
CMD ["sh", "-c", "python download_models.py && python -m uvicorn backend.main:app --host 0.0.0.0 --port ${PORT}"]
