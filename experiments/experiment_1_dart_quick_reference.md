# Experiment 1 — Dart Quick Reference

## Variables and types
```dart
int age = 20;
double distance = 12.5;
String route = 'Home to College';
bool isTrafficHeavy = false;
```

Use `final` when a value is assigned once at runtime and `const` for compile-time constants.

## Conditions
```dart
if (isTrafficHeavy) {
  print('Allow extra travel time');
} else {
  print('Normal travel conditions');
}
```

## Functions
```dart
int add(int a, int b) => a + b;
```

## Running a standalone Dart file
From the repository root, use `dart run dart_programs/01_hello_world.dart`. Replace the path to run another program. This requires the Dart SDK from the Flutter installation to be available on PATH.
