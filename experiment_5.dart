import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CommuteCounter(),
      child: const StateManagementApp(),
    ),
  );
}

class CommuteCounter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}

class StateManagementApp extends StatelessWidget {
  const StateManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Experiment 5 - State Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const StateManagementScreen(),
    );
  }
}

class StateManagementScreen extends StatefulWidget {
  const StateManagementScreen({super.key});

  @override
  State<StateManagementScreen> createState() =>
      _StateManagementScreenState();
}

class _StateManagementScreenState extends State<StateManagementScreen> {
  int _localCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 5: State Management')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            '1. Local state using setState()',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text('Local counter'),
                  Text(
                    '$_localCount',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Wrap(
                    spacing: 8,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () => setState(() => _localCount++),
                        icon: const Icon(Icons.add),
                        label: const Text('Increment'),
                      ),
                      OutlinedButton(
                        onPressed: () => setState(() => _localCount = 0),
                        child: const Text('Reset'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            '2. Shared state using Provider',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Consumer<CommuteCounter>(
                builder: (context, counter, child) => Column(
                  children: [
                    const Text('Provider counter'),
                    Text(
                      '${counter.count}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Wrap(
                      spacing: 8,
                      children: [
                        ElevatedButton.icon(
                          onPressed: counter.increment,
                          icon: const Icon(Icons.add),
                          label: const Text('Increment'),
                        ),
                        OutlinedButton(
                          onPressed: counter.reset,
                          child: const Text('Reset'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'setState() updates state inside this screen. Provider exposes '
            'shared state through CommuteCounter and notifies listening '
            'widgets when the value changes.',
          ),
        ],
      ),
    );
  }
}
