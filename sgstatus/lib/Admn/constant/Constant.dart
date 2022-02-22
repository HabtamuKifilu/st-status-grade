import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ConstantA {
  String b = 'bfdhsf';

  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("students");

  final CollectionReference sectionAreference = FirebaseFirestore.instance
      .collection("3rdsectionA")
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .collection('mydata');
  final CollectionReference besti =
      FirebaseFirestore.instance.collection("3rdsectionA");
  final CollectionReference besti1 =
      FirebaseFirestore.instance.collection("3rdsectionB");
  final CollectionReference besti2 =
      FirebaseFirestore.instance.collection("3rdsectionC");
  final CollectionReference besti3 =
      FirebaseFirestore.instance.collection("3rdsectionD");

  final CollectionReference course1 =
      FirebaseFirestore.instance.collection("coursesectionAclass");
  late String studentid;
  late String year;
  late String section;
  late String department;
  late String name;
  late String coursename;
  late String coursehighlight;
}
