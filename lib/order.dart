import 'package:cloud_firestore/cloud_firestore.dart';

class Order {
  // String id;
  final String company;
  final int calls;
  //final DateTime creationDate;
  final String orderId;
  final String state;
  // final String status;

  Order({
    // this.id = '',
    required this.company,
    required this.calls,
    //  required this.creationDate,
    required this.orderId,
    required this.state,
    // required this.status
  });

  Map<String, dynamic> toJson() => {
        //   'id': id,
        'calls': calls,
        'company': company,
        // 'creationDate': creationDate,
        'orderId': orderId,
        'state': state,
        // 'status': status,
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
        //status: json['status']
      );

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
