import 'dart:async';
import 'package:flutter/material.dart';

class homework extends StatefulWidget {
  @override
  _homeworkState createState() => _homeworkState();
}

class _homeworkState extends State<homework> {
  final List<String> alphabets = <String>[
    'Notes 1',
    'Notes 2',
    'Notes 3',
    'Notes 4',
  ];
  void temp() {
    print('Notes Uploaded');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.blue, title: Text('Homework')),
          body: ListView.builder(
              itemCount: alphabets.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.all(2),
                  color: Colors.lightBlue,
                  child: Center(
                      child: Text(
                    '${alphabets[index]}',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
                );
              }),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => temp(),
          ),
        ));
  }
}
