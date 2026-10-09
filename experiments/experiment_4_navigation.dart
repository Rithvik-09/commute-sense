import 'package:flutter/material.dart';

void main() => runApp(const NavigationApp());

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Experiment 4 - Navigation',
    theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo), useMaterial3: true),
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeScreen(),
      '/profile': (context) => const ProfileScreen(),
      '/settings': (context) => const SettingsScreen(),
    },
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Experiment 4: Navigation')),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Icon(Icons.directions_car, size: 60, color: Colors.indigo),
          const SizedBox(height: 12),
          const Text('Commute Sense', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 24),
          SizedBox(width: double.infinity, child: ElevatedButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/profile'),
            icon: const Icon(Icons.person), label: const Text('Open Profile (Named Route)'),
          )),
          const SizedBox(height: 12),
          SizedBox(width: double.infinity, child: OutlinedButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/settings'),
            icon: const Icon(Icons.settings), label: const Text('Open Settings (Named Route)'),
          )),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RouteDetailsScreen())),
            child: const Text('Open Route Details (Navigator.push)'),
          ),
        ]),
      ),
    ),
  );
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Profile')),
    body: const Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      CircleAvatar(radius: 36, child: Icon(Icons.person, size: 40)),
      SizedBox(height: 12),
      Text('Commute Sense User', style: TextStyle(fontSize: 20)),
      SizedBox(height: 8),
      Text('Opened with Navigator.pushNamed().'),
    ])),
  );
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Settings')),
    body: const ListView(children: [
      ListTile(leading: Icon(Icons.notifications), title: Text('Notifications')),
      ListTile(leading: Icon(Icons.palette), title: Text('Appearance')),
      ListTile(leading: Icon(Icons.info_outline), title: Text('About Commute Sense')),
    ]),
  );
}

class RouteDetailsScreen extends StatelessWidget {
  const RouteDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Route Details')),
    body: const Center(child: Padding(
      padding: EdgeInsets.all(24),
      child: Text('Home → College\n\nEstimated travel time: 35 minutes\nTraffic: Moderate',
        textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
    )),
  );
}
