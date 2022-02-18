import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:locator/order.dart';

Stream<List<Order>> readOrders() => FirebaseFirestore.instance
    .collection('orders')
    .snapshots()
    .map((snapshot) => snapshot.docs.map(convertFromJson).toList());

Order convertFromJson(doc) {
  return Order.fromJson(doc.data());
}
