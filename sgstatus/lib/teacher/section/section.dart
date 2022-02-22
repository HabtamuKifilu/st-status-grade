import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SectionAT extends StatefulWidget {
  const SectionAT({Key? key}) : super(key: key);

  @override
  _SectionATState createState() => _SectionATState();
}

class _SectionATState extends State<SectionAT> {
  final CollectionReference besti =
      FirebaseFirestore.instance.collection("3rdsectionA");

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
                  stream: besti.snapshots(),
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
                                    Text("name :${x['name']}"),
                                    Text("id: ${x['id']}"),
                                  ],
                                ),
                                Card(
                                    elevation: 2,
                                    child: SelectableText("UUI::${x['uid']}")),
                                Text("select uuI and paste UUI form"),
                                Table(
                                  border: TableBorder.all(),
                                  children: [
                                    TableRow(children: [
                                      Text("Department "),
                                      Text("section "),
                                      Text("year"),
                                    ]),
                                    TableRow(children: [
                                      Text(x['department']),
                                      Text(x['section']),
                                      Text(x['year'].toString()),
                                    ])
                                  ],
                                )
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
