import 'package:flutter/material.dart';

void main() => runApp(const ResponsiveApp());

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Experiment 3 - Responsive UI',
    theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo), useMaterial3: true),
    home: const ResponsiveHome(),
  );
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    final width = screen.size.width;
    final landscape = screen.orientation == Orientation.landscape;
    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 3: Responsive UI')),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          final tablet = constraints.maxWidth >= 600;
          final summary = _summary(width, landscape);
          final details = _details();
          return SingleChildScrollView(
            padding: EdgeInsets.all(tablet ? 32 : 16),
            child: tablet
              ? Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(child: summary), const SizedBox(width: 20), Expanded(child: details),
                ])
              : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                  summary, const SizedBox(height: 16), details,
                ]),
          );
        }),
      ),
    );
  }

  Widget _summary(double width, bool landscape) => Card(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Icon(Icons.directions_car, size: 52, color: Colors.indigo),
        const SizedBox(height: 12),
        const Text('Smart Commute', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Text('Screen width: ${width.toStringAsFixed(0)} logical pixels'),
        Text('Orientation: ${landscape ? "Landscape" : "Portrait"}'),
        const SizedBox(height: 12),
        const Text('The layout adapts to the available screen width.'),
      ]),
    ),
  );

  Widget _details() => const Card(
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Your Daily Commute', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 12),
        ListTile(contentPadding: EdgeInsets.zero, leading: Icon(Icons.home_outlined), title: Text('Home → College'), subtitle: Text('Usual route')),
        ListTile(contentPadding: EdgeInsets.zero, leading: Icon(Icons.traffic, color: Colors.orange), title: Text('Moderate traffic'), subtitle: Text('Estimated time: 35 minutes')),
      ]),
    ),
  );
}
