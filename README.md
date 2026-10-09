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

## Run Experiment 3 or 4
These experiment files are standalone examples. To run one:
1. Back up the current `lib/main.dart`.
2. Copy the selected experiment file's contents into `lib/main.dart`.
3. From the project root, run `flutter pub get`.
4. Run `flutter run` on an emulator or connected phone.

Both examples use built-in Flutter Material widgets and require no extra packages.
