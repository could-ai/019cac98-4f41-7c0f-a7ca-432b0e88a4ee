import 'package:flutter/material.dart';

void main() {
  runApp(const ShariatpurApp());
}

class ShariatpurApp extends StatelessWidget {
  const ShariatpurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shariatpur Education',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AboutPage(),
      },
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Shariatpur Project'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.school_outlined,
                      size: 48,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Why Shariatpur?',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Shariatpur is growing fast, but students living near the river still face big challenges. Even with the new Padma Bridge, many lack the money and guidance needed for good schools. We are here to support these hardworking students and help make their dreams of higher education come true.",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            height: 1.5,
                            fontSize: 18,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
