import 'package:appzinho/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Things to do'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          children: const [
            Task(
                'Learn Flutter',
                'assets/images/flutter.png',
                3),
            Task(
                'Sleep 8 hours',
                'assets/images/sleep.jpg',
                4),
            Task(
                'Do exercises',
                'assets/images/exercise.jpg',
                4),
            Task('Watch tv series',
                'assets/images/watch.jpg', 1),
            Task(
                'Read',
                'assets/images/read.png',
                3),
            SizedBox(height: 80,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
