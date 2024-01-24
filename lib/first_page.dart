import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_demo/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Widget Demo - 1st page'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Blue',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.green,
            child: const Center(
              child: Text(
                'Green',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
              child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                      fullscreenDialog: false,
                      allowSnapshotting: false),
                );
              },
              child: const Text('Button'),
            ),
          ))
        ],
      ),
    );
  }
}
