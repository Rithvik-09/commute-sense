# Commute Sense

Flutter lab project for the UI Design – Flutter Lab Manual.

## Experiments completed

### Experiment 1 — Flutter & Dart basics
- Flutter/Dart project configuration
- Basic Dart programs: Hello World, variables, arithmetic, function, and conditional statement
- Source files are in `dart_programs/`

### Experiment 2 — Flutter widgets and layouts
- Commute Sense UI using Text, Icon, Container, Card, ElevatedButton, Row, Column, Stack, and SizedBox
- Main app entry point: `lib/main.dart`

### Experiment 3 — Responsive UI with MediaQuery and LayoutBuilder
- Reads screen width and orientation using MediaQuery
- Uses LayoutBuilder to switch between a phone-style column and a wider tablet-style row
- Uses scrolling and flexible layouts to reduce overflow
- Source: `experiments/experiment_3_responsive_ui.dart`

### Experiment 4 — Navigation with Navigator and Named Routes
- Demonstrates Navigator.push with MaterialPageRoute
- Demonstrates Navigator.pushNamed with registered routes
- Includes Home, Profile, Settings, and Route Details screens
- Source: `experiments/experiment_4_navigation.dart`

### Experiment 5 — State management with setState() and Provider
- Demonstrates a local counter updated with `setState()`
- Demonstrates shared counter state with `ChangeNotifier`, `notifyListeners()`, and `Consumer`
- Source: `experiments/experiment_5_state_management.dart`
- Expected output and run instructions: `experiments/experiment_5_output.md`
- Added the Provider dependency to `pubspec.yaml`

## Additional learning materials for Experiments 1–5

- Experiment 1: setup checklist, expected output, viva questions, Dart quick reference, and additional Dart examples for loops, lists, and functions.
- Experiment 2: expected output, widget reference guide, widget tree, layout checklist, and viva questions.
- Experiment 3: expected output, responsive UI test checklist, and viva questions.
- Experiment 4: expected output, navigation test scenarios, and viva questions.
- Experiment 5: expected output, manual test checklist, and viva questions.
- Combined learning outcomes: `experiments/experiments_1_to_5_summary.md`

## Run Experiment 3, 4, or 5
These experiment files are standalone examples. To run one:
1. Back up the current `lib/main.dart`.
2. Copy the selected experiment file's contents into `lib/main.dart`.
3. From the project root, run `flutter pub get`.
4. Run `flutter run` on an emulator or connected phone.

Experiments 3 and 4 use built-in Flutter Material widgets and require no extra packages. Experiment 5 uses Provider; run `flutter pub get` before running it. The expected output is documented, but these standalone examples have not been device-tested as part of this update.
