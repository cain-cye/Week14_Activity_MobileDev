# ZettaiDex — Week 14 Two-Screen Static Flutter UI

**Course:** Mobile Development with Lab 
**Activity:** Week 14 — Flutter Foundations & Static UI (Part 2)  
**Student:** Ebuenga, Caryl Yasmin P.
**Repository:** https://github.com/cain-cye/Week14_Activity_MobileDev  

---

## Overview
A two-screen, non-interactive static Flutter prototype for **ZettaiDex** extending the Week 13 static screen baseline and Week 1–2 Figma wireframes. It demonstrates widget-tree composition, `Row`, `Column`, `Stack`, `Positioned`, local image assets (`Image.asset`), responsive sizing and spacing, and consistent dark-theme styling.

## Design Reference
- **Figma Wireframe (Screen 1 & Screen 2):** https://www.figma.com/design/mfr0SbobsVBKrEYK1E6dzg/W2---HIGH-FIDELITY?node-id=0-1&t=XfU12Fovy5kwtS37-1

## Project Structure
- `lib/main.dart` — App entry point (`ZettaiDexApp`) configuring `MaterialApp`, `ThemeData`, and the active initial screen.
- `lib/screens/home_screen.dart` — **Screen 1 (`HomeScreen`)**: Discover screen with app header, featured series banner (`Stack` + `Positioned`), genre filter chips, popular updates cards, and bottom navigation bar.
- `lib/screens/library_screen.dart` — **Screen 2 (`LibraryScreen`)**: Saved series library with reading-status tabs, series list cards with chapter-badge overlays (`Stack` + `Positioned`), and reading progress indicators.
- `assets/images/` — Local PNG/JPG image assets registered in `pubspec.yaml`.

## How to Preview Both Screens (Without Navigation Logic)
Because Week 14 focuses on static UI without routing or navigation logic, switch between screens in `lib/main.dart`:

1. Install dependencies and run the app:
   ```bash
   flutter pub get
   flutter run -d chrome
