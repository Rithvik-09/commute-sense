import 'package:flutter/material.dart';

void main() => runApp(const AnimationExperimentApp());

class AnimationExperimentApp extends StatelessWidget {
  const AnimationExperimentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Experiment 8 - Animations',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const AnimationPage(),
    );
  }
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;
  bool _expanded = false;
  bool _showText = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1.5, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Animations')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text('1. AnimatedContainer', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOut,
              width: _expanded ? 190 : 110,
              height: _expanded ? 120 : 90,
              decoration: BoxDecoration(
                color: _expanded ? Colors.deepPurple : Colors.blue,
                borderRadius: BorderRadius.circular(_expanded ? 28 : 8),
              ),
              alignment: Alignment.center,
              child: const Text('Grow / Shrink', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () => setState(() => _expanded = !_expanded),
            child: Text(_expanded ? 'Shrink box' : 'Grow box'),
          ),
          const Divider(height: 36),
          Text('2. Fade transition', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          AnimatedOpacity(
            opacity: _showText ? 1.0 : 0.1,
            duration: const Duration(milliseconds: 700),
            child: const Center(
              child: Text('Text fades in and out', style: TextStyle(fontSize: 22)),
            ),
          ),
          OutlinedButton(
            onPressed: () => setState(() => _showText = !_showText),
            child: Text(_showText ? 'Fade text out' : 'Fade text in'),
          ),
          const Divider(height: 36),
          Text('3. Slide transition', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          SlideTransition(
            position: _slideAnimation,
            child: Container(
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text('Orange box slides into view'),
            ),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: () {
              _controller.reset();
              _controller.forward();
            },
            child: const Text('Replay slide animation'),
          ),
        ],
      ),
    );
  }
}
