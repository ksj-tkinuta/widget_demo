import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.id);
  final String id;

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(id,
                  style: TextStyle(
                    fontSize: 100
                  ),),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Button'),
                    ),

                  ),
                ],
              )
          )
        ],
      ),

    );
  }
}