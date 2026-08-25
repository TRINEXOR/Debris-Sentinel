# Render Deployment Guide

## Steps

1. **GitHub pe push karo** (agar already nahi kiya):
   ```bash
   git init
   git add .
   git commit -m "Render deployment"
   git remote add origin https://github.com/YOUR_USERNAME/space-debris.git
   git push -u origin main
   ```

2. **[render.com](https://render.com)** pe jao → **New** → **Blueprint**
   - GitHub repo connect karo
   - Render `render.yaml` automatically detect karega
   - **Apply** click karo → Deploy!

   **Ya manually (New → Web Service):**
   - Environment: **Docker**
   - Dockerfile path: `./Dockerfile`
   - Environment Variables:
     ```
     PORT=10000
     HF_REPO_ID=infinity1506/space-debris-models
     CORS_ORIGINS=*
     ```
   - Advanced → Add Disk:
     - Mount path: `/app/data/models`
     - Size: 5 GB

3. First deploy ~15 min lagega (PyTorch + HuggingFace models download)

4. App live hoga: `https://space-debris-app.onrender.com`

## Note
Free tier pe app 15 min inactivity ke baad so jaata hai.
Pehla request aane pe ~30 sec mein wapas uth jaata hai.
