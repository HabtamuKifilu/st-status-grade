import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sgstatus/Admn/constant/Constant.dart';

class Coinfo extends StatefulWidget {
  const Coinfo({Key? key}) : super(key: key);

  @override
  _CoinfoState createState() => _CoinfoState();
}

class _CoinfoState extends State<Coinfo> {
  final CollectionReference course1 =
      FirebaseFirestore.instance.collection("coursesectionAclass");
  late String coursename;
  late String coursehighlight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                TextField(
                    onChanged: (a) {
                      coursename = a.trim();
                    },
                    decoration: InputDecoration(
                        hintText: "Course name", helperText: "eg dynamics")),
                TextField(
                    onChanged: (a) {
                      coursehighlight = a.trim();
                    },
                    maxLines: 15,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "highlight of course",
                        helperText: "eg.Introduction to dynamics")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () async {
                          await course1.add(
                              {'cname': coursename, 'clight': coursehighlight});
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.pink),
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
