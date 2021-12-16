import 'dart:async';
import 'package:flutter/material.dart';

class testdetail extends StatefulWidget {
  @override
  _testdetailState createState() => _testdetailState();
}

class _testdetailState extends State<testdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(),
                title: Text("Maths"),
                subtitle: Text("Date/Time"),
              ),
            );
          },
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
