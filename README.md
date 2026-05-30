# 🌿 Edge-Croft Vision

<img width="240" height="480" alt="image" src="https://github.com/user-attachments/assets/cc132291-0b45-470c-a045-3edd0bb847dd" /> || <img width="240" height="480" alt="contact_sheet_1" src="https://github.com/user-attachments/assets/8bd0967c-e477-48aa-af83-91f11e3311bc" />



## Plant Disease Classification, Explainability Analysis, and Edge Deployment Research


---

# Abstract

This repository investigates plant disease classification through a progression of classical computer vision, convolutional neural networks, transfer learning, explainability techniques, and deployment-oriented optimization.

The work is structured as a series of experiments rather than a single model-training exercise. The objective is to understand how disease information emerges across multiple representations: handcrafted features, unsupervised segmentation, deep feature extraction, and explainability mechanisms.

The project currently covers:

* Exploratory visual analysis
* Manual CNN operations
* K-Means disease segmentation
* CNN training from scratch
* MobileNetV2 transfer learning
* Grad-CAM explainability
* Quantization research
* Edge deployment architecture design

Dataset:

* PlantVillage-derived dataset
* 87,900 RGB images
* 38 disease classes

---

# Results Snapshot

| Metric               | Value         |
| -------------------- | ------------- |
| Dataset Size         | 87,900 Images |
| Classes              | 38            |
| Input Resolution     | 128×128       |
| Custom CNN Accuracy  | 96.19%        |
| MobileNetV2 Accuracy | 96.37%        |
| Macro F1 Score       | 0.96          |
| Model Size           | 8.67 MB       |
| Trainable Parameters | 48,678        |
| Inference Throughput | 192.55 FPS    |

---

## Training Dynamics

The MobileNetV2 model converged rapidly and achieved stable validation performance while maintaining a comparatively small trainable parameter count.

---

## Confusion Matrix

Class-level analysis reveals strong overall separability with a small number of visually similar disease classes remaining challenging.

---

# Research Objectives

This repository investigates the following questions:

### 1. Classical Vision vs Deep Learning

Can disease-relevant information be detected using handcrafted computer vision techniques before introducing deep learning?

### 2. Segmentation Before Classification

Can unsupervised clustering isolate disease regions without labels?

### 3. Explainability

Do Grad-CAM activation maps correspond to visible pathological regions?

### 4. Efficiency

What accuracy-efficiency trade-offs emerge when transitioning toward deployment-oriented architectures?

### 5. Edge Deployment

What architectural changes are required to move from notebook experiments to deployable systems?

---

# Methodology

The project follows a staged progression.

```text
Dataset
   │
   ▼
EDA & Feature Analysis
   │
   ▼
Manual CNN Operations
   │
   ▼
K-Means Segmentation
   │
   ▼
Custom CNN
   │
   ▼
MobileNetV2
   │
   ▼
Grad-CAM
   │
   ▼
Quantization Research
   │
   ▼
Edge Deployment Design
```

Rather than treating the final model as the primary artifact, each stage is evaluated independently to understand its contribution.

---

# Architecture Evolution

```text
Notebook 01
Exploratory Analysis
        │
        ▼
Notebook 02
Manual CNN Foundations
        │
        ▼
Notebook 03
K-Means Segmentation
        │
        ▼
Notebook 04
Custom CNN Training
        │
        ▼
Notebook 05
MobileNetV2 + Grad-CAM
        │
        ▼
Notebook 06
Edge Deployment Pipeline (ongoing)
```

---

# Experimental Findings

## Finding 1

Disease regions exhibit measurable color-space separation before supervised learning.

Observed through:

* RGB analysis
* HSV analysis
* K-Means clustering

---

## Finding 2

K-Means segmentation can isolate lesion regions without class labels.

This demonstrates that disease information is partially recoverable from geometric structure in feature space alone.

---

## Finding 3

Transfer learning provides a better accuracy-to-complexity ratio than the custom CNN architecture.

| Model       | Accuracy |
| ----------- | -------- |
| Custom CNN  | 96.19%   |
| MobileNetV2 | 96.37%   |

---

## Finding 4

Grad-CAM activation maps frequently align with visible lesion regions.

This suggests the model is learning disease-relevant structures rather than relying exclusively on background artifacts.

---

# Disease Localization

K-Means clustering provides an interpretable view of disease region separation before supervised learning is introduced.

---

# Explainability Analysis

## Grad-CAM Visualization

Grad-CAM was used to inspect model attention regions.

The workflow:

```text
Input Image
      │
      ▼
Forward Pass
      │
      ▼
Target Class
      │
      ▼
Gradient Extraction
      │
      ▼
Activation Weighting
      │
      ▼
Heatmap Overlay
```

The objective is not merely to produce predictions, but to inspect the spatial evidence supporting those predictions.

---

# Notebook Series

* RGB analysis
* HSV analysis
* Texture analysis
* Histogram analysis
* Disease severity estimation

- Manual convolution
- Pooling
- Feature extraction
- CNN intuition

* HSV segmentation
* K-Means clustering
* Contour extraction
* Lesion localization

- CNN training from scratch
- Performance evaluation
- Confusion matrix analysis

* Transfer learning
* Explainability
* Benchmarking
* Quantization analysis

Current work:

* ESP32-CAM integration
* Laptop inference pipeline
* Quantized deployment
* Monitoring architecture

---

# Current Deployment Direction

Current deployment research is based on:

```text
ESP32-CAM
      │
      ▼
UART / Streaming Interface
      │
      ▼
Laptop Inference Service
      │
      ▼
MobileNetV2
      │
      ▼
Grad-CAM
      │
      ▼
Metrics Collection
```

Raspberry Pi deployment remains a future extension and is not part of the current implementation.

---

# Limitations

Current limitations include:

* Controlled dataset conditions
* PlantVillage-style imagery
* Single-image classification
* No temporal crop monitoring
* No field deployment validation
* Quantization benchmarking still ongoing
* Explainability evaluation remains qualitative

---

# Ongoing Work

Current areas of investigation:

* FP32 vs INT8 benchmarking
* TFLite conversion
* Quantized inference
* ESP32-CAM integration
* Deployment architecture
* Inference monitoring
* Edge observability

---

# Repository Structure

```text
edge-croft-vision/
│
├── assets/
│   ├── mobilenet_training_curve.png
│   ├── confusion_matrix.png
│   ├── gradcam_example.png
│   └── kmeans_segmentation.png
│
├── notebooks/
│   ├── 01_EDA_and_visualization.ipynb
│   ├── 02_manual_convolution_and_pooling.ipynb
│   ├── 03_kmeans_segmentation.ipynb
│   ├── 04_custom_cnn_training.ipynb
│   ├── 05_mobilenet_transfer_learning.ipynb
|   |── WORK IN PROGRESS (DEPLOYMENT+TESTING)
│       └── 06_edge_deployment_pipeline.ipynb
│
└── README.md
```

---

# References

* Hughes, D. P., & Salathé, M. (2015). PlantVillage Dataset
* Sandler et al. (2018). MobileNetV2: Inverted Residuals and Linear Bottlenecks
* Selvaraju et al. (2017). Grad-CAM: Visual Explanations from Deep Networks via Gradient-Based Localization
* PyTorch Documentation
* OpenCV Documentation
* Scikit-Learn Documentation
