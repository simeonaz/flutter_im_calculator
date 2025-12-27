import 'package:flutter/material.dart';
import 'package:im_calculator/pages/input_page.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // C'est dans le material app qu'on définit le style global de l'app
    return MaterialApp(
      title: 'IMC Caluculator',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: .fromSeed(seedColor: kActiveCardColour),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
