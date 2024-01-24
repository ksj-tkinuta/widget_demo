import 'package:flutter/material.dart';
import 'package:widget_demo/second_page.dart';

class FirstPage extends StatelessWidget {
  String idText = '';

  FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text('Widget Demo - 1st page'),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.blue.withOpacity(0.2),
                margin: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (text) {
                      idText = text;
                    },
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Type something...',
                      hintStyle: TextStyle(color: Colors.black54, fontSize: 25),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.green,
              ),
              Expanded(
                child: SizedBox.expand(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondPage(idText),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue, onPrimary: Colors.white),
                        child: const Text('Button'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
