import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SectionAB extends StatefulWidget {
  const SectionAB({Key? key}) : super(key: key);

  @override
  _SectionABState createState() => _SectionABState();
}

class _SectionABState extends State<SectionAB> {
  final CollectionReference course1 =
      FirebaseFirestore.instance.collection("coursesectionAclass");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Container(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1,
              child: StreamBuilder(
                  stream: course1.snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            var x = snapshot.data!.docs[index];
                            return Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "course name :${x['cname']}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.pink[500],
                                  ),
                                ),
                                Text("highlight: ${x['clight']}"),
                              ],
                            ));
                          });
                    }

                    return CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
