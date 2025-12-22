import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Hello World!'),
              const Text('Why i made this'),
              Image.asset(
                'assets/skull.gif',
                errorBuilder: (context, error, stackTrace) {
                  return const Text('IMAGE FAILED TO LOAD');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
