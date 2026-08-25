# Debris Sentinel - Space Debris Collision Risk Prediction

Debris Sentinel is a space situational awareness platform designed to identify and analyze potential collision risks between active satellites and space debris.

The system combines orbital mechanics, SGP4 propagation, engineered conjunction features, deep learning, uncertainty estimation, and interactive 3D visualization to provide an end-to-end collision risk analysis workflow.

## Live Application

https://debris-sentinel.onrender.com

The application allows users to search for satellites, inspect their orbital information, and analyze potential debris threats using the prediction pipeline.

---

## Overview

Space debris is an increasing challenge for satellite operators and space missions. Thousands of tracked objects continuously orbit Earth, creating the possibility of close approaches and potential conjunction events.

Debris Sentinel addresses this problem by combining:

- Orbital propagation
- Satellite and debris catalog data
- Conjunction analysis
- Feature engineering
- Transformer-based risk classification
- Uncertainty estimation
- Collision probability estimation
- Interactive 3D satellite visualization
- B-plane analysis
- Avoidance maneuver analysis

The objective is to provide a practical software system for exploring and evaluating potential satellite-debris collision risks.

---

## Key Features

### Satellite Search

Search and select tracked satellites from the available orbital catalog.

The interface provides:

- Satellite name
- NORAD ID
- Orbital information
- Altitude
- Inclination
- Orbital parameters

### Collision Risk Prediction

The prediction pipeline analyzes a selected satellite against potential debris objects.

The system provides:

- Ranked potential threats
- Collision probability
- Risk classification
- Miss distance
- Time of closest approach
- Relative velocity
- Prediction uncertainty
- Number of conjunction pairs analyzed

### Interactive 3D Globe

The application includes an interactive 3D visualization environment for exploring:

- Satellite positions
- Orbital objects
- Potential threats
- Conjunction information
- Geographic and orbital relationships

### Orbital Propagation

The system uses SGP4 orbital propagation to estimate object positions over the prediction horizon.

### Transformer-Based Prediction

A deep learning model is used to analyze engineered conjunction features and classify collision risk.

### Uncertainty Estimation

The prediction system incorporates uncertainty estimation to provide additional context around risk predictions rather than relying only on a single classification value.

### B-Plane Analysis

The application includes B-plane geometry calculations for conjunction analysis and visualization.

### Maneuver Analysis

The system includes an avoidance maneuver analysis module for exploring potential mitigation strategies.

### Model Interpretation

The platform provides analysis components for understanding model outputs, including feature importance and attention-based interpretation.

### Analytics Dashboard

The analytics interface provides visualizations for:

- Risk distribution
- Prediction uncertainty
- Temporal risk
- Monte Carlo results
- Scatter relationships
- Conjunction statistics

---

## System Architecture

```text
                  TLE / Orbital Catalog
                           |
                           v
                  SGP4 Propagation
                           |
                           v
                 Conjunction Detection
                           |
                           v
                 Feature Engineering
                           |
                           v
              Transformer Risk Model
                           |
                  +--------+--------+
                  |                 |
                  v                 v
           Risk Classification   Uncertainty
                  |                 |
                  +--------+--------+
                           |
                           v
                 Collision Analysis
                           |
          +----------------+----------------+
          |                |                |
          v                v                v
     3D Visualization   Analytics      Risk Reports
