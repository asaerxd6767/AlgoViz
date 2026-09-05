# 🚀 AlgoViz: Interactive Algorithm & Pathfinding Visualizer

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Architecture](https://img.shields.io/badge/Architecture-Feature--First-brightgreen?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

**AlgoViz** is an interactive, performance-focused Flutter application designed to bring algorithms and graph traversal techniques to life. Built as a daily hands-on project to master core Flutter mechanics, it leverages low-level graphic rendering via `CustomPainter`, asynchronous state updates using Dart `Streams`, and real-time gesture interactions.

---

## 🧭 Status & Roadmap

> ✅ **Day 1 complete.** The feature-first architecture is applied and the state-management wiring is live — issue `#1` closed with commit `23bb0c2`. The app currently boots a placeholder **SortingPage** wired to a `SortingCubit` via `BlocProvider`; the Play/Reset buttons flip the status label and prove the BloC loop end-to-end. The roadmap below is the plan — each issue closes with its own commit.

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

### What shipped so far — Day 1 (Architecture & State Management)

- **Feature-first folder structure**: `core/` holds shared theme + constants; `features/sorting/` owns its own `domain/` + `presentation/`.
- **Boot flow**: `main.dart` → `AlgoVizApp` (`lib/app.dart`) → `MaterialApp` themed with Cyber-Circuit `AppTheme.dark`.
- **State management**: `SortingCubit` + `SortingState` live in `presentation/bloc/`, registered with `BlocProvider` on the home route and consumed by `SortingPage` via `BlocBuilder`.
- **Design tokens**: `AppBrand` + `AppSpacing` (strict 4px grid) in `core/constants/app_constants.dart`.
- **Prove-it behavior**: tapping **Play** flips the status `idle → running`; **Reset** returns to `idle`.

```text
lib/
├── main.dart                     # bootstrap → runApp(const AlgoVizApp())
├── app.dart                      # AlgoVizApp: MaterialApp(theme) + BlocProvider
├── core/
│   ├── constants/                # AppBrand + AppSpacing (4px-grid tokens)
│   └── theme/                    # AppColors + AppTheme.dark (Cyber-Circuit)
└── features/sorting/
    ├── domain/                   # models land on Day 2 (#2)
    └── presentation/
        ├── bloc/sorting_cubit.dart
        ├── pages/sorting_page.dart
        └── widgets/              # ControlBar lands on Day 4 (#4)
```

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
   flutter run -d chrome   # web is enabled; use any other device id
   ```

---

## 👨‍💻 Contributors

- **Asser** (@asaerxd6767) — project lead
- **Sara Mohammed** — welcome aboard! 👋

---

## 📄 License

This project is open-source under the [MIT License](https://www.google.com/search?q=LICENSE).
