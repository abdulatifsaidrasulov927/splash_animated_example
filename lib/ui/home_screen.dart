import 'package:flutter/material.dart';
import 'package:splash_animated_example/ui/animated/liquidy_scree.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const LIQUIDYScreen();
                  },
                ));
              },
              child: const Text('LIQUIDY'),
            )
          ],
        ),
      ),
    );
  }
}
