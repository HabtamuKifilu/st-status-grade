import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sgstatus/Admn/Ui/department/civlil/year.dart';

class AdminData extends StatelessWidget {
  const AdminData({Key? key}) : super(key: key);

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
                          onPressed: () {},
                          child: Text(
                            "Department of Software engineering",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          onPressed: () {
                            Get.to(Yearcivil());
                          },
                          child: Text(
                            "Department of Civil engineering",
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
                            "Department of Chemical engineering",
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
                            "Department of machanical engineering",
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
                            "Department of archetucture engineering",
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
                            "Department of Electrical engineering",
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
