import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Grade extends StatefulWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  _GradeState createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  final CollectionReference besti =
      FirebaseFirestore.instance.collection("3rdsectionA");

  late String uud, result, course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[500],
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 150),
              child: Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: TextField(
                                onChanged: (val) {
                                  uud = val.trim();
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter student UID"))),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextField(
                                onChanged: (val) {
                                  course = val.trim();
                                },
                                decoration: InputDecoration(
                                    hintText: "Enter course name"))),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextField(
                                onChanged: (val) {
                                  result = val.trim();
                                },
                                maxLength: 1,
                                decoration: InputDecoration(
                                    hintText: "Enter his Grade"))),
                        IconButton(
                            onPressed: () async {
                              await besti.doc(uud).collection('grade').add({
                                'grade': result,
                                'course': course,
                              }).then((value) {
                                Get.snackbar(
                                    "Teacher panel", "data succecfully added",
                                    backgroundColor: Colors.pink);
                              });
                            },
                            icon: Icon(
                              Icons.send,
                              color: Colors.blue[500],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
