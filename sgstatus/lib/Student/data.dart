import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/YEAR%20I/Section/course/Coursehighlight.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/year.dart';
import 'package:sgstatus/Student/result/Exam.dart';
import 'package:sgstatus/Student/result/finalExam.dart';
import 'package:sgstatus/Student/result/grade.dart';
import 'package:sgstatus/Student/result/quizresult.dart';
import 'package:sgstatus/Student/widget/dialog.dart';

class Data extends StatelessWidget {
  const Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefix: Icon(Icons.search),
                        hintText: "Search course",
                        fillColor: Colors.white),
                  ),
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.pink)),
                    onPressed: () {},
                    child: Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
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
                            Get.to(SectionAR());
                          },
                          child: Text(
                            "Exam result",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(SectionAqr());
                          },
                          child: Text(
                            " Quiz result",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(SectionAfe());
                          },
                          child: Text(
                            "final exam",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(SectionAB());
                          },
                          child: Text(
                            "Course info",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {},
                          child: Text(
                            "Course prerequest",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(SectionAgr());
                          },
                          child: Text(
                            "Grade result",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {},
                          child: Text(
                            "GPA",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {},
                          child: Text(
                            "Remark",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))
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
