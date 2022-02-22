import 'package:flutter/material.dart';

class Coursepre extends StatefulWidget {
  const Coursepre({Key? key}) : super(key: key);

  @override
  _CoursepreState createState() => _CoursepreState();
}

class _CoursepreState extends State<Coursepre> {
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
                    decoration: InputDecoration(
                        hintText: "Course name", helperText: "eg dynamics")),
                TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "prerequste",
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
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
