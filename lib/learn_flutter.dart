import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitch = false;
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn dart with Mavene'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/mavs.jpg',
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.blueGrey,
                child: const Center(
                  child: Text('This is my photo'),
                )),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.brown),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheck,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheck = newBool;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
