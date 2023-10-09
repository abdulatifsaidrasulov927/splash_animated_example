import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:splash_animated_example/main.dart';

class LIQUIDYScreen extends StatefulWidget {
  const LIQUIDYScreen({super.key});

  @override
  State<LIQUIDYScreen> createState() => _LIQUIDYScreenState();
}

class _LIQUIDYScreenState extends State<LIQUIDYScreen> {
  @override
  Widget build(BuildContext context) {
    final animatedTextExample = AnimatedTextExample(
      label: 'TextLiquidFill',
      color: Colors.white,
      child: TextLiquidFill(
        text: 'OffOrd',
        waveColor: Colors.blueAccent,
        boxBackgroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 70,
          fontWeight: FontWeight.bold,
        ),
        boxHeight: 300,
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: animatedTextExample.color),
              height: 300.0,
              width: 300.0,
              child: Center(
                key: ValueKey(animatedTextExample.label),
                child: animatedTextExample.child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
