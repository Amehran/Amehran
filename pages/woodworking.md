---
title: "The Engineering of Wood"
permalink: /woodworking/
layout: single
author_profile: true
header:
  overlay_image: /assets/images/portfolio_banner.png # Placeholder, user should update with a wood texture or workshop photo
  overlay_filter: 0.5
excerpt: "Debugging in the physical world: Precision, constraints, and irreversible execution."
toc: true
toc_label: "Build Process"
toc_icon: "tools"
gallery:
  - url: /assets/images/woodworking/bench.jpg
    image_path: /assets/images/woodworking/bench.jpg
    alt: "Woodworking Bench Project"
    title: "The Workshop Bench"
  - url: /assets/images/woodworking/box1.jpg
    image_path: /assets/images/woodworking/box1.jpg
    alt: "Custom Wooden Box"
    title: "Jewelry Box"
  - url: /assets/images/woodworking/carving1.jpg
    image_path: /assets/images/woodworking/carving1.jpg
    alt: "Wood Carving Detail"
    title: "The Flower"
  - url: /assets/images/woodworking/swimmer.jpg
    image_path: /assets/images/woodworking/swimmer.jpg
    alt: "Sculptural Piece"
    title: "The Swimmer"
---

Ideally, software engineering is the art of defining constraints and executing logic within them. Woodworking is **exactly** the same—except `Ctrl+Z` doesn't exist, and a merge conflict means you've ruined a $200 piece of Walnut.

I approach woodworking not just as a hobby, but as a practice ground for **critical thinking**. It forces a level of foresight and disciplined planning that directly translates back to system architecture.

## 📐 The "Architecture" Phase (Planning & CAD)
Just as I wouldn't write a line of code without a sequence diagram, I don't make a single cut without a blueprint.
*   **Dimensional Logic**: Calculating tolerances. If a drawer slide requires 12.7mm clearance, 12.5mm is a bug.
*   **Dependency Management**: In complex joinery, Piece A must be glued before Piece B, or the assembly is impossible. This is deadlock resolution in physical form.

## 🪵 Material Constraints (Runtime Environment)
Wood, like a mobile operating system, has opinionated constraints.
*   **Grain Direction**: You cannot force wood to move against its grain, just as you shouldn't fight the Android Lifecycle.
*   **Expansion & Contraction**: Wood moves with humidity. Ignoring this leads to cracking (crashing). I build "responsive layouts" in wood (breadboard ends, sliding dovetails) to handle this expansion.

## 🐛 Debugging the Physical World
Mistakes happen. A chisel slips; a measurement is off.
*   **Root Cause Analysis**: Why did the saw bind? (Blade alignment? Tension?)
*   **Refactoring**: Instead of scrapping a piece, can I adapt the design? Can a "feature" hide the bug?
*   **Polishing**: Sanding and finishing is the UI/UX. A sturdy table that feels rough to the touch is a failed product.

## 🛠️ Gallery of Builds

{% include carousel.html %}

