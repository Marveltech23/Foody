import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection of order

  final CollectionReference Orders =
      FirebaseFirestore.instance.collection('order');

// save order to db

  Future<void> saveOrderToDatebase(String receipt) async {
    await Orders.add({
      'date': DateTime.now(),
      'order': receipt,
    });
  }
}
