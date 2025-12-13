---
title: "Agentic Systems"
permalink: /agentic-ai/
layout: simple
author_profile: true
header:
  overlay_filter: 0.5
  overlay_image: /assets/images/gradient-banner.png
---

## 🤖 Autonomous Multi-Agent Architectures

I build active systems where AI agents collaborate to solve complex engineering tasks, moving beyond simple chat interfaces to actionable outcomes.

---

### Project: AI Dev Companion

**A comprehensive feedback system where a swarm of specialized agents provides expert-level analysis of your code.**

*   **Multi-Agent Swarm:** Orchestrates specialized agents (Syntax, Security, Performance) to analyze code in parallel.
*   **Contextual Memory:** Maintains conversational state for natural, iterative improvements.
*   **Serverless Architecture:** Scalable backend built on **AWS Lambda** and **AWS Bedrock**.
*   **Interactive Mobile Client:** Paired with **native Android app** for on-the-go code review.

[View on GitHub](https://github.com/amehran/AIDevCompanionDev){: .btn .btn--github}

---

### Project: Multi-Agent Mobile UI Assistant

**An intelligent toolchain that converts natural language and designs into functional UI code.**

*   **Nature Language to UI:** Describes interfaces in English to generate **Jetpack Compose** code.
*   **Figma Integration:** Extracts layouts, colors, and typography directly from Figma via MCP.
*   **Agentic Pipeline:**
    *   **Intent Parser:** Understands requirements.
    *   **Layout Planner:** Structures the UI hierarchy.
    *   **UI Generator:** Writes the Kotlin/Compose code.
    *   **Reviewers:** Automated agents check for accessibility and Design System compliance.
*   **Tech Stack:** **LangGraph**, **Streamlit**, **MCP Tools** (Android Lint, Gradle).

[View on GitHub](https://github.com/amehran/Multi-Agent-Mobile-UI-Assistant-){: .btn .btn--github}

---

## 🛠 Technical Stack

**Agent Orchestration**
*   **Frameworks:** CrewAI, LangGraph.
*   **Models:** AWS Bedrock, Anthropic Claude.

**Backend & Infrastructure**
*   **Serverless:** AWS Lambda, Docker.
*   **API:** FastAPI.

**Tools & Interface**
*   **UI:** Streamlit.
*   **Protocol:** Model Context Protocol (MCP).