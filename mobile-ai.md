---
title: "Mobile & Edge AI"
permalink: /mobile-ai/
layout: single
author_profile: true
header:
  overlay_color: "#005b96" # A deep "Tech Blue" header
  overlay_filter: 0.5
toc: true
toc_label: "Tech Stack"
---

The future of AI is hybrid: powerful Cloud Agents reasoning on the server, and privacy-first models executing on the Edge.

## 📱 Edge Execution (Android)
I specialize in optimizing inference pipelines to run **LLMs and Computer Vision models purely on-device**.

### Key Technologies
* **Gemini Nano:** Implementing on-device generation for chat and summarization without network calls.
* **MediaPipe:** Custom graph construction for real-time hand and object tracking.
* **TensorFlow Lite:** Quantizing server-side models (float32 -> int8) to run on mobile NPUs with minimal accuracy loss.

### Case Study: Offline Assistive Vision
*Built an Android application for the visually impaired that detects obstacles in real-time.*
* **Challenge:** High latency when sending video frames to the cloud.
* **Solution:** Ported a YOLOv8 model to TFLite, running on Android Neural Networks API (NNAPI) at 30 FPS.
* **Stack:** Kotlin, CameraX, Coroutines, TFLite Interpreter.

---

## 🤖 Agentic Cloud Architecture
When the device needs help, it calls the swarm. I build **hierarchical agent systems** that can plan and execute.

### The Stack
* **Orchestration:** LangGraph & CrewAI
* **Backend:** Python (FastAPI) deployed on AWS Lambda
* **Protocol:** Protobuf for type-safe mobile-to-cloud communication.