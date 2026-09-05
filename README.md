# 🚀 AlgoViz: Interactive Algorithm & Pathfinding Visualizer

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Architecture](https://img.shields.io/badge/Architecture-Feature--First-brightgreen?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

**AlgoViz** is an interactive, performance-focused Flutter application designed to bring algorithms and graph traversal techniques to life. Built as a daily hands-on project to master core Flutter mechanics, it leverages low-level graphic rendering via `CustomPainter`, asynchronous state updates using Dart `Streams`, and real-time gesture interactions.

---

## 🧭 Status & Roadmap

> 🚧 **Early development.** The feature list below is the plan — the repo currently holds the **feature-first folder structure** and the **state-management dependencies**. Day 1 (wiring the architecture + state management, issue `#1`) is still in progress.

| # | Task | Status |
| --- | --- | --- |
| `#1` | Architecture & state management | ✅ Done |
| `#2` | `SortingPainter` canvas engine | ⬜ planned |
| `#3` | Async Bubble Sort stream | ⬜ planned |
| `#4` | Playback control bar + speed slider | ⬜ planned |
| `#5` | Quick Sort + color-coded states | ⬜ planned |
| `#6` | 2D grid painter | ⬜ planned |
| `#7` | Touch gesture layer (drag-to-draw walls) | ⬜ planned |
| `#8` | BFS pathfinding engine | ⬜ planned |
| `#9` | Pitch-modulated audio feedback | ⬜ planned |
| `#10` | Cyber-Circuit theme + README polish | ⬜ planned |

---

## ✨ Key Features

### 📊 1. Sorting Algorithm Engine

- **Step-by-Step Visualization**: Observe sorting algorithms execute in real time.
- **Color-Coded State Transitions**: Visual state indicators for `Default`, `Comparing`, `Swapping`, `Pivot`, and `Sorted` elements.
- **Supported Algorithms**:
  - 🟡 **Bubble Sort** (Asynchronous stream-based comparison)
  - 🟣 **Quick Sort** (Pivot selection and dynamic partition rendering)

### 🗺️ 2. 2D Pathfinding & Graph Visualizer

- **Interactive Grid Canvas**: A dynamic 2D grid matrix built for graph traversal algorithms.
- **Drag-to-Draw Obstacles**: Intuitive gesture handlers to draw or erase walls in real time.
- **Breadth-First Search (BFS)**: Visualizes frontier expansion and shortest path reconstruction.

### 🎛️ 3. Execution Control Bar

- Full playback controls: **Play**, **Pause**, **Reset**, and **Shuffle Array/Grid**.
- **Real-Time Speed Slider**: Adjust step delays dynamically from `10ms` to `500ms`.

### 🔊 4. Audio Feedback & UI Polish

- **Pitch-Modulated Audio**: Frequency tones change based on array bar heights during swaps.
- **Cyberpunk / Dark Theme**: High-contrast, neon-accented UI built for clear visualization.

---

## 🛠️ Tech Stack & Architecture

- **Framework**: [Flutter](https://flutter.dev/) (Dart SDK)
- **Architecture**: Feature-First & Layered Architecture
- **State Management**: Provider / Flutter Bloc
- **Canvas Rendering**: `CustomPainter`
- **Asynchronous Flow**: Dart `async*` stream generators & `AnimationController`

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (`>=3.0.0`)
- Dart SDK (`>=3.0.0`)

### Installation & Run

1. **Clone the repository**:
   ```bash
   git clone https://github.com/asaerxd6767/AlgoViz.git
   cd AlgoViz
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```

---

## 👨‍💻 Contributors

- **Asser** (@asaerxd6767) — project lead
- **Sara Mohammed** — welcome aboard! 👋

---

## 📄 License

This project is open-source under the [MIT License](https://www.google.com/search?q=LICENSE).
