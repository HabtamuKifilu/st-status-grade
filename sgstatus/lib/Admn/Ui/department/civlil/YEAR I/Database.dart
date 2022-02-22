import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/YEAR%20I/Form.dart';

class Database extends StatelessWidget {
  const Database({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Card(
          elevation: 8,
          child: Column(
            children: [
              Text(
                "Create Database collection for this user ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink)),
                  onPressed: () {
                    // ignore: unnecessary_statements
                    //  Get.to(Coinfo());
                  },
                  child: Text(
                    "Create database",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.pink)),
                  onPressed: () {
                    // ignore: unnecessary_statements
                    Get.to(StudentF());
                  },
                  child: Text(
                    "Add Student data",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
