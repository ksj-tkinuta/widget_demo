import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Widget Demo - 2nd page'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
            child: const Center(
              child: Text(
                'Red',
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
                    Navigator.pop(context);
                  },
                  child: const Text('Button'),
                ),

              )
          )
        ],
      ),

    );
  }
}