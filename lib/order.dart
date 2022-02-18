import 'package:cloud_firestore/cloud_firestore.dart';

class Order {
  // String id;
  String company;
  final int calls;
  // DateTime creationDate;
  final String orderId;
  final String state;
  String status;

  Order(
      {
      // this.id = '',
      this.company = 'NO Name',
      required this.calls,
      //this.creationDate = new DateTime.now().toUtc(),
      required this.orderId,
      required this.state,
      this.status = 'No Status'});

  Map<String, dynamic> toJson() => {
        //   'id': id,
        'calls': calls,
        'company': company,
        // 'creationDate': creationDate,
        'orderId': orderId,
        'state': state,
        'status': status,
      };

  static Order fromJson(Map<String, dynamic> json) {
    try {
      final orden = new Order(
          // id: json['id'],
          company: json['company'],
          calls: json['calls'],
          // creationDate: (json['creationDate'] as Timestamp).toDate(),
          orderId: json['orderId'],
          state: json['state'],
          status: json['status']);

      return orden;
    } catch (e) {
      print('CANCELARR ERROR ${e}');
      return new Order(
          company: "Gossio",
          calls: 2,
          // creationDate: creationDate,
          orderId: "Gossio",
          state: "Gossio");
    }
  }
}
