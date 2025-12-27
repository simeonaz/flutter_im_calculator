import 'package:flutter/material.dart';
// import 'package:im_calculator/constants.dart';
import 'package:im_calculator/widgets/bottom_button.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('IMC Calculator'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              children: [
                // Expanded prend tout l'espace disponible
                Expanded(
                  child: Row(
                    children: const [
                      Expanded(child: Placeholder()),
                      SizedBox(width: 8.0),
                      Expanded(child: Placeholder()),
                    ],
                  ),
                ),

                const SizedBox(height: 10.0),
                Expanded(child: Placeholder()),
                const SizedBox(height: 10.0),

                Expanded(
                  child: Row(
                    children: const [
                      Expanded(child: Placeholder()),
                      SizedBox(width: 8),
                      Expanded(child: Placeholder()),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          BottomButton(onTap: () => {}, buttonTitle: 'Calculator'),
        ],
      ),
    );
  }
}
