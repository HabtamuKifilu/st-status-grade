import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:sgstatus/Admn/constant/Constant.dart';

class ControllerA {
  final c = ConstantA();
  Future<void> adddata() async {
    await c.sectionAreference.add({
      'name': c.name,
      'id': c.studentid,
      'year': c.year,
      'section': c.section,
      'department': c.department
    }).then((_) => print("succeccs fully added"));
  }

  Future<void> adddatab() async {
    await c.sectionAreference.add({
      'name': c.name,
      'id': c.studentid,
      'year': c.year,
      'section': c.section,
      'department': c.department
    }).then((_) => print("succeccs fully added"));
  }

  Future<void> deleteall() async {
    await c.collectionReference.doc().collection('students').doc().delete();
  }
}
