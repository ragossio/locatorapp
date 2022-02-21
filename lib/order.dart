import 'package:cloud_firestore/cloud_firestore.dart';

class Order {
  // String id;
  String company;
  final int calls;
  // DateTime creationDate;
  final String orderId;
  final String state;
  String status;
  String urlImage;

  Order(
      {
      // this.id = '',
      this.company = 'NO Name',
      required this.calls,
      //this.creationDate = new DateTime.now().toUtc(),
      required this.orderId,
      required this.state,
      this.status = 'No Status',
      this.urlImage =  'https://st4.depositphotos.com/18664664/22485/v/600/depositphotos_224853604-stock-illustration-restaurant-icon-icon-trendy-restaurant.jpg'});

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
      String imageUrl = json['urlImage'] != '' && json['urlImage'] != null ? json['urlImage'] : 'https://st4.depositphotos.com/18664664/22485/v/600/depositphotos_224853604-stock-illustration-restaurant-icon-icon-trendy-restaurant.jpg';
      print('Image URL ${imageUrl}');
      final orden = new Order(
          // id: json['id'],
          company: json['company'],
          calls: json['calls'],
          // creationDate: (json['creationDate'] as Timestamp).toDate(),
          orderId: json['orderId'],
          state: json['state'],
          status: json['status'],
          urlImage: json['urlImage']);

      return orden;
    } catch (e) {
      print('CANCELARR ERROR ${e}');
      return new Order(
          company: "Gossio",
          calls: 2,
          // creationDate: creationDate,
          orderId: "Gossio",
          state: "Gossio",
          urlImage: 'https://st4.depositphotos.com/18664664/22485/v/600/depositphotos_224853604-stock-illustration-restaurant-icon-icon-trendy-restaurant.jpg');
    }
  }
}
