import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC Caluculator',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('IMC Calculator'))),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(child: Placeholder(fallbackHeight: 80)),
                      SizedBox(width: 8),
                      Expanded(child: Placeholder(fallbackHeight: 80)),
                    ],
                  ),

                  const SizedBox(height: 12),
                  // const Placeholder(fallbackHeight: 250),
                  Expanded(child: Placeholder()),
                  const SizedBox(height: 12),

                  Row(
                    children: const [
                      Expanded(child: Placeholder(fallbackHeight: 80)),
                      SizedBox(width: 8),
                      Expanded(child: Placeholder(fallbackHeight: 80)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Placeholder(fallbackHeight: 80),
            // Row(children: [Placeholder(fallbackHeight: 80)]),
          ],
        ),
      ),
    );
  }
}
