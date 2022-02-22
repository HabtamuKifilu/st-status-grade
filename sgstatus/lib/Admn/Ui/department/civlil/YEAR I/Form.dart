import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgstatus/Admn/constant/Constant.dart';
import 'package:sgstatus/Admn/controller/AdminController.dart';

class StudentF extends StatefulWidget {
  StudentF({Key? key}) : super(key: key);

  @override
  _StudentFState createState() => _StudentFState();
}

class _StudentFState extends State<StudentF> {
  final CollectionReference besti =
      FirebaseFirestore.instance.collection("3rdsectionA");
  final CollectionReference besti1 =
      FirebaseFirestore.instance.collection("3rdsectionB");
  final CollectionReference besti2 =
      FirebaseFirestore.instance.collection("3rdsectionC");
  final CollectionReference besti3 =
      FirebaseFirestore.instance.collection("3rdsectionD");
  late String studentid;
  late String year;
  late String section;
  late String department;
  late String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[500],
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextField(
                          onChanged: (val) {
                            name = val.trim();
                          },
                          decoration: InputDecoration(
                            labelText: "user",
                            hintText: "enter  name",
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextField(
                          onChanged: (a) {
                            studentid = a.trim();
                          },
                          decoration: InputDecoration(
                            hintText: "enter your id",
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextField(
                          keyboardType: TextInputType.number,
                          onChanged: (a) {
                            year = a.trim();
                          },
                          decoration: InputDecoration(
                            hintText: "year",
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextField(
                          onChanged: (a) {
                            section = a.trim();
                          },
                          decoration: InputDecoration(
                            hintText: "section",
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextField(
                          onChanged: (a) {
                            department = a.trim();
                          },
                          decoration: InputDecoration(
                            hintText: "department",
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Wrap(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.pink)),
                                  onPressed: () async {
                                    await besti.add({
                                      'name': name,
                                      'id': studentid,
                                      'year': year,
                                      'section': section,
                                      'department': department,
                                      'uid': FirebaseAuth
                                          .instance.currentUser!.uid,
                                    }).then((value) => Get.snackbar(
                                        "Admin panel",
                                        "student succesfully added",
                                        backgroundColor: Colors.pink));
                                  },
                                  child: Text(
                                    "SectionA",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.pink)),
                                  onPressed: () async {
                                    await besti1.add({
                                      'name': name,
                                      'id': studentid,
                                      'year': year,
                                      'section': section,
                                      'department': department,
                                      'uid': FirebaseAuth
                                          .instance.currentUser!.uid,
                                    });
                                  },
                                  child: Text("SectionB",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.pink)),
                              onPressed: () async {
                                await besti2.add({
                                  'name': name,
                                  'id': studentid,
                                  'year': year,
                                  'section': section,
                                  'department': department,
                                  'uid': FirebaseAuth.instance.currentUser!.uid,
                                });
                              },
                              child: Text("SectionC",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.pink)),
                              onPressed: () async {
                                await besti3.add({
                                  'name': name,
                                  'id': studentid,
                                  'year': year,
                                  'section': section,
                                  'department': department,
                                  'uid': FirebaseAuth.instance.currentUser!.uid,
                                });
                              },
                              child: Text("SectionD",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
