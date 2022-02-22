import 'package:flutter/material.dart';

class Examdate extends StatelessWidget {
  const Examdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[500],
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 150),
              child: Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Enform Exam Date"))),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                              color: Colors.blue[500],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
