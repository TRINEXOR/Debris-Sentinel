# Debris Sentinel

## Space Debris Collision Risk Prediction Platform

Debris Sentinel is a space situational awareness platform designed to analyze potential collision risks between active satellites and space debris.

The system combines orbital mechanics, SGP4 propagation, conjunction analysis, machine learning, uncertainty estimation, and interactive 3D visualization into a single platform for satellite and debris risk analysis.

The project is intended for research, experimentation, education, and software development in the areas of orbital mechanics, satellite operations, machine learning, and space debris monitoring.

---

## Live Application

Production deployment:

https://debris-sentinel.onrender.com/

---

## Overview

The increasing number of objects in Earth's orbit has made space debris monitoring and collision-risk assessment an important challenge for satellite operators and space missions.

Debris Sentinel provides an integrated environment for examining potential conjunctions between satellites and debris objects.

The platform combines conventional orbital calculations with machine learning-based risk assessment to provide users with a structured view of potential threats.

### Core Capabilities

- Satellite and debris search
- Orbital data processing
- SGP4 orbital propagation
- Conjunction analysis
- Collision-risk prediction
- Risk classification
- Collision probability estimation
- Prediction uncertainty
- B-plane analysis
- Avoidance maneuver analysis
- Monte Carlo analysis
- Interactive 3D visualization
- Prediction interpretation
- Risk analytics

---

## Key Features

### Satellite Search and Tracking

Users can search and select objects from the available orbital catalog.

The system can display:

- Satellite name
- NORAD ID
- Orbital altitude
- Orbital inclination
- Orbital parameters
- Propagated position
- Related conjunction information

### Collision Risk Prediction

The prediction pipeline evaluates potential debris threats for a selected satellite.

Depending on the available orbital and model data, the system can provide:

- Threat ranking
- Collision probability
- Risk classification
- Miss distance
- Time of closest approach
- Relative velocity
- Prediction uncertainty
- Conjunction information

Risk results are intended for analytical and research purposes and should not be treated as authoritative operational conjunction assessments.

### Interactive 3D Visualization

The platform provides an interactive three-dimensional environment for exploring orbital objects.

Visualization includes:

- Satellites
- Debris objects
- Orbital trajectories
- Potential threats
- Conjunction relationships
- Spatial positioning
- Interactive camera controls

### Orbital Propagation

Debris Sentinel uses SGP4-based propagation to estimate satellite and debris positions from available orbital elements.

The propagation pipeline supports the generation of position and relative-motion information required for conjunction analysis.

### Machine Learning Risk Prediction

A transformer-based deep learning model is used to analyze engineered conjunction features and classify potential collision risk.

The machine learning pipeline works alongside orbital mechanics calculations rather than replacing them.

### Uncertainty Estimation

The system provides uncertainty information together with model predictions.

This allows users to distinguish between a model's predicted risk and the confidence associated with that prediction.

The project uses an evidential approach for representing predictive uncertainty.

### B-Plane Analysis

The platform includes B-plane calculations for examining conjunction geometry and relative encounter characteristics.

### Avoidance Maneuver Analysis

The application includes functionality for exploring potential collision-avoidance maneuver scenarios.

The module is intended for analysis and experimentation rather than operational maneuver planning.

### Prediction Interpretation

The platform includes components for examining model predictions and feature contributions.

### Analytics Dashboard

The analytics interface can present:

- Risk distribution
- Prediction uncertainty
- Conjunction statistics
- Temporal risk
- Monte Carlo results
- Feature relationships
- Prediction analysis

---

## System Architecture

```text
                         Orbital Data
                              |
                              v
                     SGP4 Propagation
                              |
                              v
                    Conjunction Analysis
                              |
                              v
                    Feature Engineering
                              |
                              v
                  Transformer Prediction
                              |
                  +-----------+-----------+
                  |                       |
                  v                       v
          Risk Classification       Uncertainty
                  |                       |
                  +-----------+-----------+
                              |
                              v
                    Collision Analysis
                              |
             +----------------+----------------+
             |                |                |
             v                v                v
      3D Visualization    Analytics       Risk Analysis
```

---

## Prediction Workflow

```text
Satellite Selection
        |
        v
Orbital Data Retrieval
        |
        v
SGP4 Propagation
        |
        v
Conjunction Identification
        |
        v
Feature Engineering
        |
        v
Machine Learning Inference
        |
        v
Risk Classification
        |
        v
Probability and Uncertainty
        |
        v
Threat Ranking
        |
        v
Visualization and Analysis
```

---

## Machine Learning Model

The project uses a transformer encoder for conjunction-risk classification.

| Parameter | Specification |
|---|---|
| Model Type | Transformer Encoder |
| Layers | 10 |
| Attention Heads | 16 |
| Parameters | Approximately 150 million |
| Input | Engineered conjunction features |
| Feature Size | Approximately 30 features |
| Framework | PyTorch |
| Output | Risk classification |
| Risk Classes | Low, Medium, High, Critical |
| Uncertainty Method | Evidential Deep Learning |
| Distribution | Dirichlet |

---

## Feature Engineering

The prediction pipeline uses orbital and conjunction-related features.

### Orbital Features

- Semi-major axis
- Eccentricity
- Inclination
- Right ascension of ascending node
- Argument of perigee
- Mean anomaly
- Orbital altitude
- Orbital period

### Relative Motion Features

- Miss distance
- Relative velocity
- Time of closest approach
- Altitude difference
- Inclination difference
- RAAN difference
- Relative position components
- Relative velocity components
- Orbital period ratio

### Additional Features

- Time to closest approach
- Physical object characteristics where available
- Kinetic-energy-related features
- Momentum-related features
- Conjunction geometry

---

## Technology Stack

### Backend

- [Python](https://www.python.org/)
- [FastAPI](https://fastapi.tiangolo.com/)
- [Uvicorn](https://www.uvicorn.org/)
- [PyTorch](https://pytorch.org/)

### Machine Learning

- Transformer Encoder
- Evidential Deep Learning
- Monte Carlo analysis
- Feature engineering
- Uncertainty estimation

### Orbital Mechanics

- SGP4
- Orbital propagation
- Conjunction analysis
- B-plane calculations
- Relative motion analysis

### Frontend

- [React](https://react.dev/)
- [TypeScript](https://www.typescriptlang.org/)
- [Vite](https://vite.dev/)
- [Three.js](https://threejs.org/)
- [Recharts](https://recharts.org/)

### Infrastructure

- [Docker](https://www.docker.com/)
- [Render](https://render.com/)

---

## Data Sources

### CelesTrak

[CelesTrak](https://celestrak.org/) provides publicly available orbital data, including satellite and debris catalog information.

Source:

https://celestrak.org/

SGP4 documentation:

https://www.celestrak.org/software/tutorials/sgp4.php

### SGP4

The project uses the SGP4 orbital propagation model.

Python implementation:

https://github.com/brandon-rhodes/python-sgp4

---

## Project Structure

```text
space-debris-collision-risk/
│
├── backend/
│   ├── main.py
│   ├── predictor.py
│   │
│   ├── models/
│   │   └── transformer.py
│   │
│   └── utils/
│       ├── sgp4_propagator.py
│       ├── feature_engineering.py
│       ├── bplane.py
│       ├── maneuver.py
│       └── interpret.py
│
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── api/
│   │   ├── App.tsx
│   │   └── main.tsx
│   │
│   ├── package.json
│   └── vite.config.ts
│
├── training/
│   ├── config.yaml
│   ├── data_download.py
│   ├── preprocess.py
│   ├── train.py
│   └── evaluate.py
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── models/
│
├── Dockerfile
├── render.yaml
├── download_models.py
├── setup.sh
├── setup.bat
└── README.md
```

---

## Requirements

- Python 3.12 or later
- Node.js 18 or later
- npm
- Git
- Docker for containerized deployment
- Sufficient storage for model checkpoints

---

## Local Installation

### Clone the Repository

```bash
git clone https://github.com/INFINITY1506/space-debris-collision-risk.git
cd space-debris-collision-risk
```

### Backend Setup

```bash
pip install -r backend/requirements.txt
```

Download the required model files:

```bash
python download_models.py
```

Start the backend:

```bash
python -m uvicorn backend.main:app --host 0.0.0.0 --port 8000
```

The API will be available at:

```text
http://localhost:8000
```

### Frontend Setup

Open another terminal:

```bash
cd frontend
npm install
npm run dev
```

The frontend will be available at the local URL provided by Vite.

---

## Automated Setup

### Linux / macOS

```bash
chmod +x setup.sh
./setup.sh
```

### Windows

```bat
setup.bat
```

---

## API

### Health Check

```http
GET /health
```

Used to verify that the backend is running correctly.

### Satellite Search

```http
GET /satellites
```

Returns available satellite and orbital catalog information.

### Satellite Details

```http
GET /satellite/{id}
```

Returns orbital information for a selected object.

### Collision Prediction

```http
POST /predict
```

Runs the collision-risk prediction pipeline.

Example:

```bash
curl -X POST http://localhost:8000/predict \
  -H "Content-Type: application/json" \
  -d '{"satellite_name":"ISS","top_n":10}'
```

---

## Model Checkpoints

The prediction system requires trained model checkpoints.

Large model files should not be unnecessarily committed to Git repositories.

The project provides a model download utility:

```bash
python download_models.py
```

After the model files are available, the backend can load them during startup.

---

## Training

### Download Data

```bash
python training/data_download.py
```

### Preprocess Data

```bash
python training/preprocess.py
```

### Train Model

```bash
python training/train.py
```

### Evaluate Model

```bash
python training/evaluate.py
```

Training configuration:

```text
training/config.yaml
```

---

## Docker

Build the application:

```bash
docker build -t debris-sentinel .
```

Run the container:

```bash
docker run -p 8000:8000 debris-sentinel
```

The backend will be available at:

```text
http://localhost:8000
```

---

## Deployment

### Render

The backend is deployed using Docker on [Render](https://render.com/).

The repository includes:

```text
Dockerfile
render.yaml
```

### Recommended Render Configuration

```text
Service Type:
Web Service

Environment:
Production

Runtime:
Docker

Branch:
main

Region:
Oregon

Root Directory:
/
```

### Deployment Steps

1. Push the project to GitHub.
2. Open the Render dashboard.
3. Create a new Web Service.
4. Connect the GitHub repository.
5. Select the `main` branch.
6. Select Docker as the runtime.
7. Keep the root directory at `/` if the Dockerfile is located at the repository root.
8. Configure required environment variables.
9. Deploy the service.

If `render.yaml` is configured correctly, Render can use the repository configuration during deployment.

---

## Render Health Check

The backend exposes:

```http
GET /health
```

Recommended Render health-check path:

```text
/health
```

The backend should bind to:

```text
0.0.0.0
```

and use the deployment-provided `PORT` environment variable where required.

---

## Environment Variables

Only configure environment variables required by the application.

For local development:

```text
.env
```

For Render, configure environment variables through the Render service settings.

Do not commit:

```text
.env
.env.local
```

or any file containing private credentials.

---

## Performance

The prediction pipeline contains a computationally intensive deep learning model.

Performance depends on:

- CPU or GPU availability
- Number of conjunction pairs
- Model size
- Prediction horizon
- Available memory
- Deployment configuration

GPU acceleration can significantly reduce inference time.

Cloud CPU inference may take considerably longer than GPU inference.

---

## Limitations

- TLE data may not represent the exact real-time orbital state of an object.
- Prediction accuracy can decrease as the propagation horizon increases.
- The current implementation does not model every physical perturbation affecting orbital motion.
- CPU-based inference can be significantly slower than GPU-based inference.
- Collision-risk predictions depend on the quality of orbital data and training methodology.
- Model uncertainty does not guarantee prediction correctness.
- The platform should not be used as the sole source for operational satellite maneuver decisions.

---

## Future Development

Planned improvements include:

- Real-time orbital data updates
- Space-Track API integration
- Real-time conjunction monitoring
- Multi-satellite conjunction analysis
- Advanced maneuver optimization
- Delta-v optimization
- Improved uncertainty calibration
- GPU-based inference
- Historical conjunction analysis
- Advanced satellite operator dashboards
- Additional orbital perturbation models
- Automated conjunction alerts
- Improved model interpretability
- Larger and more diverse training datasets

---

## Safety and Operational Disclaimer

Debris Sentinel is a research and software engineering project intended for educational, analytical, and experimental use.

Collision-risk predictions generated by this system should not be treated as authoritative operational flight-safety assessments.

Actual satellite maneuver decisions should rely on validated orbital data, authoritative conjunction assessment systems, and qualified spaceflight personnel.

---

## Contributing

Contributions are welcome.

To contribute:

1. Fork the repository.
2. Create a feature branch.
3. Make your changes.
4. Test the application locally.
5. Commit your changes.
6. Push the branch.
7. Open a pull request.

Example:

```bash
git checkout -b feature/your-feature
git add .
git commit -m "Add your feature"
git push origin feature/your-feature
```

---

## License

Debris Sentinel is open-source software licensed under the MIT License.

Copyright (c) 2026 TRINEXOR.

You are free to use, copy, modify, merge, publish, distribute, sublicense,
and sell copies of the software, subject to the conditions of the MIT License.

See the [LICENSE](LICENSE) file for the complete license terms.

---

## Author

Developed and maintained by **TRINEXOR**.

GitHub:

https://github.com/INFINITY1506/space-debris-collision-risk

---

## Acknowledgements

This project builds upon open-source software, public orbital data, and established orbital-propagation methods.

### CelesTrak

https://celestrak.org/

### SGP4

https://github.com/brandon-rhodes/python-sgp4

### Python

https://www.python.org/

### PyTorch

https://pytorch.org/

### FastAPI

https://fastapi.tiangolo.com/

### React

https://react.dev/

### TypeScript

https://www.typescriptlang.org/

### Vite

https://vite.dev/

### Three.js

https://threejs.org/

### Recharts

https://recharts.org/

### Docker

https://www.docker.com/

### Render

https://render.com/

---

## Project Status

Active development.

The platform is continuously being improved with additional orbital analysis capabilities, model improvements, visualization features, and deployment optimizations.

---

## License

Debris Sentinel is open-source software licensed under the MIT License.

Copyright (c) 2026 TRINEXOR.

You are free to use, copy, modify, merge, publish, distribute, sublicense,
and sell copies of the software, subject to the conditions of the MIT License.

See the [LICENSE](LICENSE) file for the complete license terms.
