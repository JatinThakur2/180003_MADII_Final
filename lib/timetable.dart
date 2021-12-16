import 'dart:async';
import 'package:flutter/material.dart';

class timetable extends StatefulWidget {
  @override
  _timetableState createState() => _timetableState();
}

class _timetableState extends State<timetable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Table"),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Table",
            textScaleFactor: 2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(width: 2.0, color: Colors.black),
            children: [
              TableRow(children: [
                Text("Subject", textScaleFactor: 1.5),
                Text("Time", textScaleFactor: 1.5),
                Text("Day", textScaleFactor: 1.5),
                Text(
                  "Sr no.",
                  textScaleFactor: 1.5,
                ),
              ]),
              TableRow(children: [
                Text("Maths", textScaleFactor: 1.5),
                Text("10AM-11AM", textScaleFactor: 1.5),
                Text("Monday", textScaleFactor: 1.5),
                Text("1.", textScaleFactor: 1.5),
              ]),
              TableRow(children: [
                Text("MAD", textScaleFactor: 1.5),
                Text("11AM-12AM", textScaleFactor: 1.5),
                Text("Monday", textScaleFactor: 1.5),
                Text("2.", textScaleFactor: 1.5),
              ]),
              TableRow(children: [
                Text("BD", textScaleFactor: 1.5),
                Text("12PM-1PM", textScaleFactor: 1.5),
                Text("Monday", textScaleFactor: 1.5),
                Text("3.", textScaleFactor: 1.5),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
