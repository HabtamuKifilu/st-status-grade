import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Section/SectionA.dart';

class Detailstudent extends StatelessWidget {
  const Detailstudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[500],
        body: Card(
          elevation: 30,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 60),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            // ignore: unnecessary_statements
                            Get.to(SectionA());
                          },
                          child: Text(
                            "Section A",
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
                            // Get.to(SectionB());
                          },
                          child: Text(
                            "Section B",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            // ignore: unnecessary_statements
                            //Get.to(SectionC());
                          },
                          child: Text(
                            "Section C",
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
                            //Get.to(SectionD());
                          },
                          child: Text(
                            "Section D",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ]),
              ],
            ),
          ),
        ));
  }
}
