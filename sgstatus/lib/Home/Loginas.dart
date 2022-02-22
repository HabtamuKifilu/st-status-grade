import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgstatus/Admn/Ui/Home.dart';
import 'package:sgstatus/Student/Home.dart';
import 'package:sgstatus/teacher/Home.dart';

class Loginas extends StatelessWidget {
  const Loginas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 100),
          child: SizedBox(
            child: Image.asset("Assets/aastu.jpg"),
          ),
        ),
        TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink)),
            onPressed: () {
              Get.to(Adminhome());
            },
            child: Row(
              children: [
                Text("login as Admin"),
                Icon(Icons.admin_panel_settings)
              ],
            )),
        TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink)),
            onPressed: () {
              Get.to(Studenthome());
            },
            child: Row(
              children: [Text("login as Student"), Icon(Icons.home)],
            )),
        TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink)),
            onPressed: () {
              Get.to(Teacherhome());
            },
            child: Row(
              children: [Text("login as Teacher"), Icon(Icons.edit)],
            ))
      ],
    ));
  }
}
