# Experiment 5 — Output

**Title:** Understanding Stateful and Stateless Widgets and Implementing State Management using `setState()` and Provider.

## Expected screen output

The app opens with the app bar **Experiment 5: State Management** and two counter sections.

### 1. Local state using setState()

- Initial display: `Local counter — 0`
- Tap **Increment** once: the value becomes `1`.
- Tap **Reset**: the value returns to `0`.
- The screen rebuilds after `setState()` changes the local value.

### 2. Shared state using Provider

- Initial display: `Provider counter — 0`
- Tap **Increment** once: the value becomes `1`.
- Tap **Reset**: the value returns to `0`.
- `CommuteCounter` calls `notifyListeners()`; the `Consumer` rebuilds with the updated value.

## How to run

From the Flutter project root:

```bash
flutter pub get
```

Back up `lib/main.dart`, then copy the contents of `experiments/experiment_5_state_management.dart` into `lib/main.dart` and run:

```bash
flutter run
```

## Result

The example demonstrates local state updates with `setState()` and shared state updates with Provider. The values above describe the expected output; the app has not been executed on a device as part of this repository update.
