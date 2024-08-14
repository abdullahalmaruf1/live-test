import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Text Styling'),
        ),
        body: const TextStylingScreen(),
      ),
    );
  }
}

class TextStylingScreen extends StatelessWidget {
  const TextStylingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Flutter Text Styling',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Experiment with text styles',
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('You clicked the button!'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text(
              'Click Me',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text.rich(
            TextSpan(
              text: 'Welcome to ',
              style: TextStyle(fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: 'Flutter!',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
