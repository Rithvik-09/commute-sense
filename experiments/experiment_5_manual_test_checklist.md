# Experiment 5 — Manual Test Checklist

## Local counter (setState)
- [ ] Initial value is 0.
- [ ] One Increment tap changes the value to 1.
- [ ] Several taps increase the value one at a time.
- [ ] Reset returns the value to 0.

## Shared counter (Provider)
- [ ] Initial value is 0.
- [ ] Increment updates the displayed value.
- [ ] Reset returns the value to 0.
- [ ] The Consumer rebuilds after ChangeNotifier calls notifyListeners.

## Setup
Run `flutter pub get` before launching the example because Provider is declared in pubspec.yaml. Copy the standalone experiment into lib/main.dart after backing up the existing entry point.

These are expected behaviors to verify, not results from an executed device test.
