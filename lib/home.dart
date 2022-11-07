import 'package:flutter/material.dart';
import 'package:fluttertest/learn_flutter.dart';

class HomePg extends StatelessWidget {
  const HomePg({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnFlutter();
              },
            ),
          );
        },
        child: const Text('Learn Flutter'),
      ),
    );
  }
}
