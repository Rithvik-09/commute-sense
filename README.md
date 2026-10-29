# Commute Sense

Flutter lab project for the UI Design – Flutter Lab Manual.

## Experiments 1–8

### Experiment 1 — Flutter & Dart basics
- Flutter/Dart project configuration.
- Basic Dart programs: Hello World, variables, arithmetic, functions, and conditional statements.
- Source files: `dart_programs/`.

**Actual output screenshot:**

![Experiment 1 actual DartPad output](screenshots/experiment_1.png)

> This image appears once `screenshots/experiment_1.png` is uploaded to the repository.

### Experiment 2 — Flutter widgets and layouts
- Demonstrates Text, Icon, Container, Card, ElevatedButton, Row, Column, Stack, and SizedBox.
- Main app entry point: `lib/main.dart`.

### Experiment 3 — Responsive UI with MediaQuery and LayoutBuilder
- Reads screen width and orientation using MediaQuery.
- Uses LayoutBuilder to switch between a phone-style column and a wider tablet-style row.
- Uses scrolling and flexible layouts to reduce overflow.
- Source: `experiments/experiment_3_responsive_ui.dart`.

### Experiment 4 — Navigation with Navigator and Named Routes
- Demonstrates Navigator.push with MaterialPageRoute and Navigator.pushNamed with registered routes.
- Includes Home, Profile, Settings, and Route Details screens.
- Source: `experiments/experiment_4_navigation.dart`.

### Experiment 5 — State management with setState() and Provider
- Demonstrates local state with setState() and shared state with ChangeNotifier, notifyListeners(), and Consumer.
- Source: `experiments/experiment_5_state_management.dart`.
- Dependency: Provider (listed in `pubspec.yaml`).

### Experiment 6 — Custom widgets and styling
- Demonstrates reusable custom widgets, styled buttons/cards, and a Material theme.
- Source: `experiments/experiment_6_custom_widgets_and_theme.dart`.
- Expected behavior: a custom widgets screen with a styled card and button.

### Experiment 7 — Forms and validation
- Demonstrates a form with name, email, and password fields and validation feedback.
- Source: `experiments/experiment_7_forms_and_validation.dart`.
- Expected behavior: invalid or empty fields show validation messages; valid input can be submitted.

### Experiment 8 — Animations in Flutter
- Demonstrates an animated box, fading text, and a sliding orange box.
- Source: `experiments/experiment_8_animations.dart`.
- Expected behavior: tapping the animation control triggers the animations.

## Run Experiments 6–8 online

These three files are standalone Flutter examples and use Flutter's built-in Material library. They do not need the Provider package.

1. Open [DartPad](https://dartpad.dev/) and select a **Flutter** sample/project (not Dart-only mode).
2. Open one of the experiment source files linked above on GitHub.
3. Copy the entire file contents into DartPad's `main.dart`, replacing the starter example.
4. Press **Run** and wait for the preview.
5. Test the controls:
   - **Experiment 6:** inspect the custom card/button and tap the button.
   - **Experiment 7:** submit an empty form, try an invalid email/short password, then try valid values.
   - **Experiment 8:** tap the animation control and observe the box/text transitions.
6. Capture a screenshot of the actual running preview. Save it locally using the filenames below.
7. Add the screenshots to this repository in a folder named `screenshots/` and commit them (see instructions below).

If DartPad cannot run the example in your browser, try [FlutLab](https://flutlab.io/) by creating a Flutter project and replacing `lib/main.dart` with the selected experiment file. Online editors can change their UI or free-tier limits over time.

## Actual output screenshots

Screenshots must be captured from a running Flutter preview. **No screenshots are included yet**; expected behavior described above is not a substitute for a real run.

After running each experiment, save:
- `screenshots/experiment_6.png`
- `screenshots/experiment_7.png`
- `screenshots/experiment_8.png`

For Experiment 7, ideally capture the form with validation errors and, if possible, a second screenshot showing successful submission. For Experiment 8, capture the preview while the animation is visible. Add only screenshots you actually captured from the running app.

### Add screenshots using Git

From the repository root, after creating the `screenshots` folder and saving the images there:

```powershell
git add screenshots/
git commit -m "Add actual output screenshots for Flutter experiments 6-8"
git push
```

## Run locally (optional)

From the repository root:

```powershell
flutter pub get
flutter devices
flutter run
```

To run a standalone experiment locally, back up `lib/main.dart`, copy the chosen experiment file into `lib/main.dart`, then run `flutter run`. Restore your original entry point when finished. Experiments 6–8 are separate demos; they do not replace the main Commute Sense app automatically.

## Learning materials for Experiments 1–5

- Experiment 1: setup checklist, expected output, viva questions, Dart quick reference, and additional Dart examples.
- Experiment 2: expected output, widget reference guide, widget tree, layout checklist, and viva questions.
- Experiments 3–5: expected outputs, test checklists, and viva questions.
- Combined learning outcomes: `experiments/experiments_1_to_5_summary.md`.
