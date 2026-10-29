import 'package:flutter/material.dart';

void main() => runApp(const CustomWidgetsApp());

class CustomWidgetsApp extends StatelessWidget {
  const CustomWidgetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Experiment 6 - Custom Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        cardTheme: const CardThemeData(
          elevation: 3,
          margin: EdgeInsets.zero,
        ),
      ),
      home: const CustomWidgetsPage(),
    );
  }
}

class CustomWidgetsPage extends StatelessWidget {
  const CustomWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Widgets Example')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Reusable UI Components',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text('Experiment 6: custom widgets, themes and styling.'),
          const SizedBox(height: 20),
          const InfoCard(
            title: 'Commute Sense',
            description: 'A reusable card built as a custom widget.',
            icon: Icons.directions_transit,
          ),
          const SizedBox(height: 20),
          const InfoCard(
            title: 'Custom styling',
            description: 'ThemeData keeps colors and controls consistent.',
            icon: Icons.palette_outlined,
          ),
          const SizedBox(height: 24),
          CustomActionButton(
            label: 'Click me',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Custom button pressed!')),
              );
            },
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Icon(icon, color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 4),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomActionButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.touch_app),
      label: Text(label),
    );
  }
}
