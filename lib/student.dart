import 'dart:async';
import 'package:flutter/material.dart';
import 'package:student/Exams.dart';
import 'package:student/Homework.dart';
import 'package:student/grade.dart';
import 'package:student/testdetail.dart';

import 'timetable.dart';

class student extends StatefulWidget {
  @override
  _studentState createState() => _studentState();
}

class _studentState extends State<student> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Student Dashboard"),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector(
                  child: Card(
                    color: Colors.orange,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Text('Timetable',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => timetable()),
                    )
                  },
                ),
                GestureDetector(
                  child: Card(
                    color: Colors.blue,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Text('Homework',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homework()),
                    )
                  },
                ),
                GestureDetector(
                  child: Card(
                    color: Colors.green,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Text('Test',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => testdetail()),
                    )
                  },
                ),
                GestureDetector(
                  child: Card(
                    color: Colors.yellow,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Text('Grades',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => grade()),
                    )
                  },
                ),
                GestureDetector(
                  child: Card(
                    color: Colors.purple,
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Text('Exams',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => exam()),
                    )
                  },
                ),
              ],
            )));
  }
}
