import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SectionAqr extends StatefulWidget {
  const SectionAqr({Key? key}) : super(key: key);

  @override
  _SectionAqrState createState() => _SectionAqrState();
}

class _SectionAqrState extends State<SectionAqr> {
  final CollectionReference besti1 = FirebaseFirestore.instance
      .collection("3rdSecitonA")
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('mydata');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Container(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .65,
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('3rdsectionA')
                      .doc(FirebaseAuth.instance.currentUser!.uid)
                      .collection('quiz')
                      .snapshots(),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Card(
                                        child: Column(
                                      children: [
                                        Text(
                                          ":${x['course']}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.pink),
                                        ),
                                        Text("Quiz result :${x['quiz']}"),
                                      ],
                                    )),
                                  ],
                                ),
                              ],
                            ));
                          });
                    } else {
                      print('no data');
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
