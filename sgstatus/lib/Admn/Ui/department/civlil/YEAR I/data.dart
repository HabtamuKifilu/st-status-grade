import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/YEAR%20I/Coursepre.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/YEAR%20I/Database.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/YEAR%20I/Section/course/Coursehighlight.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/YEAR%20I/courseinfo.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/YEAR%20I/detail.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/YEAR%20I/forgettanpassword.dart';

import 'Form.dart';

class Year1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String _email, _password;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 8),
            child: Column(
              children: [
                Text(
                  "Regsiter ",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "and Teacher",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      _email = value.trim();
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        hintText: "Enter your email"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      _password = value.trim();
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password_rounded,
                          color: Colors.white,
                        ),
                        hintText: "Enter your password"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 36.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () async {
                            User? user = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: _email, password: _password)
                                .then((_) {
                              print("user is signed in");
                              Get.to(Database());
                            });
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink)),
                            onPressed: () async {
                              // ignore: unnecessary_statements
                              User? user = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _email, password: _password)
                                  .then((_) {
                                Get.to(Database());
                              });
                            },
                            child: Text(
                              "Rigister student",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink)),
                            onPressed: () {
                              // ignore: unnecessary_statements
                              Get.to(Coinfo());
                            },
                            child: Text(
                              "set Course highlight",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink)),
                            onPressed: () {
                              // ignore: unnecessary_statements
                              Get.to(SectionAB());
                            },
                            child: Text(
                              "Course highlight",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink)),
                            onPressed: () {
                              // ignore: unnecessary_statements
                              Get.to(Coursepre());
                            },
                            child: Text(
                              "set Course prerequest",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink)),
                            onPressed: () {
                              // ignore: unnecessary_statements
                              Get.to(Coinfo());
                            },
                            child: Text(
                              "Course prerequest",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink)),
                            onPressed: () {
                              // ignore: unnecessary_statements
                              Get.to(Detailstudent());
                            },
                            child: Text(
                              "Student Detail",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.pink)),
                            onPressed: () {
                              // ignore: unnecessary_statements
                              Get.to(SectionFr());
                            },
                            child: Text(
                              "Forgettan Student Password",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
