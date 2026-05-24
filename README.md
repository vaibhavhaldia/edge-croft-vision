<!-- # edge-croft-vision

LOT of classical computer vision before deep learning relied on:

    thresholding
    clustering
    morphology
    segmentation

---

CNNs themselves internally learn:

hierarchical segmentation-like behavior.

Early CNN filters often become:

    edge detectors
    color region detectors
    texture separators

So your KMeans experiment becomes:
“Can classical segmentation help modern CNNs?” -->

# 🌿 Edge-Croft-Vision

### *Plant Disease Classification with Explainable Edge AI*

> “Because crops deserve observability too.”

---

## 🚜 What is this?

**Edge-Croft-Vision** is an end-to-end **Explainable Edge AI pipeline** for plant disease classification built using:

* 📷 Edge imaging (`ESP32-CAM`)
* 🧠 Deep Learning (`MobileNetV2`, Custom CNNs)
* 🔥 Explainability (`Grad-CAM`)
* 🌐 Distributed inference (`Raspberry Pi`)
* 📊 Observability (`Prometheus + Grafana`)
* ⚡ Edge optimization (`Quantization`, lightweight inference)

The project goes beyond:

```text
train model → get accuracy → submit PDF
```

Instead, it explores:

```text
computer vision
+ edge AI
+ explainability
+ systems engineering
+ deployment architecture
+ observability
```

---

# 🧠 Project Philosophy

Most ML projects stop at:

```python
model.fit(X, y)
```

This one asks:

* What happens on constrained hardware?
* Can the model explain itself?
* What if WiFi drops?
* How fast is inference?
* How much RAM does deployment consume?
* Can agriculture systems become observable infrastructure?

---

# 🌱 Core Idea

A crop image is captured using an `ESP32-CAM`.

The image is transmitted over WiFi to a `Raspberry Pi 4B`, where:

* disease classification runs,
* Grad-CAM heatmaps are generated,
* inference metrics are logged,
* system telemetry is monitored live.

Because apparently even tomatoes deserve MLOps.

---

# 🏗️ System Architecture

```text
ESP32-CAM
    ↓
WiFi Image Streaming
    ↓
FastAPI / Flask Server
    ↓
MobileNetV2 Inference
    ↓
Grad-CAM Explainability
    ↓
Prometheus Metrics
    ↓
Grafana Dashboard
```

---

# 🔬 Major Engineering Areas Covered

| Domain                    | Covered |
| ------------------------- | ------- |
| Classical Computer Vision | ✅       |
| CNNs from Scratch         | ✅       |
| Transfer Learning         | ✅       |
| Explainable AI            | ✅       |
| Edge AI                   | ✅       |
| Distributed Inference     | ✅       |
| Observability Engineering | ✅       |
| Quantization Theory       | ✅       |
| Failure Analysis          | ✅       |
| Deployment Systems        | ✅       |

---

# 📚 Notebook Progression

## `01_EDA_and_visualization.ipynb`

### *“Know thy pixels.”*

* RGB/HSV analysis
* lesion distribution
* texture analysis
* disease severity estimation
* class imbalance analysis

---

## `02_manual_convolution_and_pooling.ipynb`

### *Convolution without emotional support from PyTorch.*

* manual convolution
* pooling
* manual backpropagation
* CNN intuition
* overfitting analysis

---

## `03_kmeans_segmentation.ipynb`

### *Unsupervised learning enters the farm.*

* KMeans clustering
* HSV segmentation
* contour extraction
* lesion isolation
* disease localization

---

## `04_custom_cnn_training.ipynb`

### *Building CNNs the hard way so future debugging hurts less.*

* custom CNN architecture
* training pipeline
* confusion matrix analysis
* failure analysis
* overfitting mitigation

---

## `05_mobilenet_transfer_learning.ipynb`

### *Tiny model. Big ambitions.*

* transfer learning
* MobileNetV2
* Grad-CAM
* benchmarking
* quantization theory
* edge AI analysis

---

## `06_edge_deployment_pipeline.ipynb` *(ongoing)*

### *Where ML becomes infrastructure.*

Planned:

* FastAPI inference server
* ESP32 integration
* inference APIs
* Grad-CAM endpoints
* Prometheus metrics
* Grafana dashboards
* deployment architecture
* edge optimization

---

# 🔥 Explainability Matters

This project does not blindly trust predictions.

Using **Grad-CAM**, the system visualizes:

> *what the model actually looked at before making a decision.*

Because:

```text
99% accuracy
without interpretability
is just statistically confident guessing.
```

---

# ⚡ Edge AI Focus

The deployment stack is optimized for constrained hardware:

* Raspberry Pi inference
* MobileNet lightweight deployment
* quantization-aware engineering
* reduced compute footprint
* low-memory inference strategies

---

# 📊 Observability Layer

If your AI system crashes silently,
you do not have intelligence.

You have optimism.

This project integrates:

* Prometheus metrics
* Grafana dashboards
* inference latency monitoring
* CPU/RAM tracking
* deployment telemetry

---

# 🧪 Current Research Directions

* FP32 vs INT8 benchmarking
* edge latency optimization
* lightweight explainability
* deployment resilience
* defensive inference engineering
* resource-aware AI pipelines

---

# 🛠️ Planned Tech Stack

| Component    | Technology      |
| ------------ | --------------- |
| Edge Camera  | ESP32-CAM       |
| Edge Server  | Raspberry Pi 4B |
| Backend API  | FastAPI / Flask |
| DL Framework | PyTorch         |
| Edge Runtime | TFLite          |
| Monitoring   | Prometheus      |
| Dashboard    | Grafana         |

---

# 🚀 Why This Project Exists

To explore a simple question:

> Can deep learning systems become lightweight, explainable, observable, and deployable enough for real-world agriculture?

Also because training another ResNet on Kaggle without deployment felt spiritually incomplete.

---

# 📷 Future Extensions

* live edge streaming
* TensorRT optimization
* TinyML exploration
* mobile deployment
* multi-crop support
* anomaly detection
* federated agricultural learning
* drone integration

---

# 🧠 Hidden Lesson of This Project

The hardest part of AI is rarely:

```text
making predictions
```

The hardest part is:

```text
building systems that survive reality.
```

---

# 🌾 Edge-Croft-Vision

### *Where agriculture meets computer vision, edge computing, and systems engineering.*