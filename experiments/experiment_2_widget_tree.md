# Experiment 2 — Widget Tree

The Commute Sense screen is composed from Flutter widgets. The main hierarchy is:

```text
CommuteSenseApp (MaterialApp)
└── ExperimentTwoScreen (Scaffold)
    ├── AppBar
    └── SingleChildScrollView
        └── Column
            ├── Stack (banner and title)
            ├── Row
            │   ├── _InfoCard (route)
            │   └── _InfoCard (traffic)
            ├── Container (travel time)
            └── ElevatedButton (Start Commute)
```

## Why these widgets are used
- **MaterialApp:** app-level navigation, theme, and Material defaults.
- **Scaffold:** standard screen structure.
- **SingleChildScrollView:** allows content to scroll on shorter screens.
- **Column and Row:** arrange content vertically and horizontally.
- **Stack:** layers the banner background and foreground content.
- **Card and Container:** group and decorate information.
- **ElevatedButton:** presents the primary action.

This is a source-code guide; the hierarchy is inferred from `lib/main.dart`.
