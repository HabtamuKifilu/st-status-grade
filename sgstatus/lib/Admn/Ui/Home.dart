import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'adminform/Data.dart';

class Adminhome extends StatelessWidget {
  late String _email, _password, iD;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60),
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.blue[500],
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Student Grade Status",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Admin Panel",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  _email = value.trim();
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(25),
                    
                  ),
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
                obscureText: true,
                onChanged: (valuea) {
                  _password = valuea;
                },
                decoration: InputDecoration(
                  fillColor: Colors.pink,
                  
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(25),
                    
                  ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    hintText: "Enter your password",
                    labelText:"password",
            ),
                    
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  if (value.contains("Admin01") || value.contains("Admin02")) {
                    iD = value.trim();
                  } else {
                    print("error occured");
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(25),
                    
                  ),
                    prefixIcon: Icon(
                      Icons.perm_identity,
                      color: Colors.white,
                    ),
                    hintText: "Enter your ID"),
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
                        if (iD == "Admin01" || iD == "Admin02") {
                          User? user = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: _email, password: _password)
                              .then((_) {
                            Get.snackbar("Admin panel", "you are signed in",
                              backgroundColor: Colors.pink)
                            Get.to(AdminData());
                          });
                        } else {
                          Get.snackbar(
                              "Admin panel", "please insert correct data",
                              backgroundColor: Colors.pink);
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
