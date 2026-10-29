# Commute Sense — Flutter Lab Experiments

This repository contains eight standalone lab experiments. Each section below includes the aim, a short explanation of the main concept, the expected/observed output, and an inline screenshot from the run.

## Experiment 1 — Flutter and Dart basics

**Aim:** Learn the Dart `main()` entry point, variables, arithmetic, string interpolation, and console output.

**Explanation:** The program prints a greeting, stores `10` and `20` in integer variables, adds them, and prints the result using string interpolation.

**Output:**
```text
Hello, world!
The sum of 10 and 20 is 30
```

**Output screenshot**

![Experiment 1 — Dart console output](screenshots/experiment_1.png)

Source: [experiment_1.dart](experiment_1.dart)

---

## Experiment 2 — Flutter widgets and layouts

**Aim:** Build a simple screen using common Flutter widgets and layout elements.

**Explanation:** The screen demonstrates a text widget, an icon/logo, containers/cards, spacing, and basic styling. The running screenshot currently shows the Commute Sense dashboard with a Smart Commute banner, Route and Traffic cards, estimated travel time, and a Start Commute button.

**Output screenshot**

![Experiment 2 — Flutter widgets and layout](screenshots/experiment_2.png)

Source: [experiment_2.dart](experiment_2.dart)

---

## Experiment 3 — Responsive UI

**Aim:** Make a Flutter layout adapt to available screen dimensions.

**Explanation:** `MediaQuery` reads the screen width and orientation. `LayoutBuilder` provides the available layout constraints, allowing the UI to arrange its commute summary cards side-by-side on a wider preview.

**Observed output:** The preview reports a width of 748 logical pixels and landscape orientation, and displays Smart Commute and Your Daily Commute cards in a two-column layout.

**Output screenshot**

![Experiment 3 — Responsive UI](screenshots/experiment_3.png)

Source: [experiment_3.dart](experiment_3.dart)

---

## Experiment 4 — Navigation

**Aim:** Navigate between screens using named routes and direct route pushes.

**Explanation:** `Navigator.pushNamed()` opens the Profile and Settings screens using registered route names. `Navigator.push()` with `MaterialPageRoute` opens Route Details directly. The app bar back arrow returns to the previous screen.

**Observed output:** The Home screen shows buttons for Profile, Settings, and Route Details.

**Output screenshot**

![Experiment 4 — Navigation](screenshots/experiment_4.png)

Source: [experiment_4.dart](experiment_4.dart)

---

## Experiment 5 — State management

**Aim:** Compare local state using `setState()` with shared state using Provider.

**Explanation:** The first counter changes local widget state with `setState()`. The second uses a `ChangeNotifier` model; calling `notifyListeners()` tells listening widgets to rebuild when the value changes. Both sections provide Increment and Reset controls.

**Observed output:** Two independent counters are displayed, one for local state and one for Provider-managed state.

**Output screenshot**

![Experiment 5 — State management](screenshots/experiment_5.png)

Source: [experiment_5.dart](experiment_5.dart)

---

## Experiment 6 — Custom widgets and styling

**Aim:** Create reusable UI components and apply consistent styling.

**Explanation:** Custom card widgets keep repeated UI structure reusable. `ThemeData` and card theme settings provide consistent colors, elevation, and spacing. A styled button demonstrates a reusable control.

**Observed output:** The screen displays Commute Sense and Custom styling cards, followed by a purple Click me button.

**Output screenshot**

![Experiment 6 — Custom widgets and styling](screenshots/experiment_6.png)

Source: [experiment_6.dart](experiment_6.dart)

---

## Experiment 7 — Forms and validation

**Aim:** Collect user input and validate form fields before accepting submission.

**Explanation:** A `Form` with a `GlobalKey<FormState>` coordinates validation. Text controllers read the Name, Email, and Password values. The invalid-email test uses `abc` and displays the validation message **“Enter a valid email”** in red. A valid-looking input was also submitted successfully.

**Output screenshot — invalid email validation**

![Experiment 7 — Form validation error](screenshots/experiment_7.png)

Source: [experiment_7.dart](experiment_7.dart)

---

## Experiment 8 — Animations

**Aim:** Demonstrate size, opacity, and position animations in Flutter.

**Explanation:** `AnimatedContainer` animates changes to the box's dimensions and shape. A fade transition changes the text opacity. A slide transition animates an orange box into view and can be replayed with a button.

**Observed output:** The screenshot shows the enlarged blue/purple box with a Shrink box control, faded text with a Fade text in control, and the orange slide-transition box.

**Output screenshot**

![Experiment 8 — Flutter animations](screenshots/experiment_8.png)

Source: [experiment_8.dart](experiment_8.dart)

---

## Run the experiments

1. Open [DartPad](https://dartpad.dev/).
2. Run Experiment 1 in Dart mode.
3. Run Experiments 2–8 in Flutter mode by copying the selected source file into the editor.
4. Test interactive controls for navigation, counters, form validation, and animations.
5. Experiment 5 requires the `provider` package to be available in the Flutter environment.

## Repository structure

- `experiment_1.dart` through `experiment_8.dart` — one source file per experiment.
- `screenshots/` — one output image per experiment, embedded above.
