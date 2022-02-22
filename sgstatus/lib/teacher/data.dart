import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sgstatus/teacher/form/Exam.dart';
import 'package:sgstatus/teacher/form/Examdate.dart';
import 'package:sgstatus/teacher/form/finalexam.dart';
import 'package:sgstatus/teacher/form/getattendace.dart';
import 'package:sgstatus/teacher/form/quiz.dart';
import 'package:sgstatus/teacher/form/setgrade.dart';
import 'package:sgstatus/teacher/section/section.dart';

class DataTeacherd extends StatelessWidget {
  const DataTeacherd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(Exam());
                          },
                          child: Text(
                            " set Exam ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(Quiz());
                          },
                          child: Text(
                            " set  Quiz",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(Grade());
                          },
                          child: Text(
                            "set grade",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(Final());
                          },
                          child: Text(
                            "set Final Exam ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(GetAttendance());
                          },
                          child: Text(
                            " Get attendace",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(Examdate());
                          },
                          child: Text(
                            "Set Exam date",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(SectionAT());
                          },
                          child: Text(
                            "Student detail",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
