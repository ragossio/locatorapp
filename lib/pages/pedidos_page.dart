import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
//import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:locator/fire.dart';
import 'package:locator/order.dart';

/*
class Pedidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Order>>(
        stream: readOrders(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final orders = snapshot.data!;
            return ListView(
              children: orders.map(BuildOrder).toList(),
            );
          } else {
            print('false');
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

*/
class Pedidos extends StatefulWidget {
  @override
  State<Pedidos> createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Order>>(
        stream: readOrders(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final orders = snapshot.data!;
            return ListView(
              children: orders.map(buildOrder).toList(),
            );
          } else {
            print('false GAO');
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

/*
  Widget makeWave(int before, int after) {
    return AnimatorSet(
      child: Container(
        color: Colors.white,
        width: 5,
        height: 15,
      ),
      animatorSet: [
        Delay(duration: before),
        SY(from: 0.8, to: 1.6, duration: 200, delay: 0, curve: Curves.linear),
        SY(from: 1.6, to: 0.8, duration: 200, delay: 0, curve: Curves.linear),
        Delay(duration: after),
      ],
    );
  }
*/
  Widget buildOrder(Order order) {
    Vibrate.canVibrate.then((value) {
      if (value) {
        Vibrate.vibrate;
      }
    });
    String url = "https://st4.depositphotos.com/18664664/22485/v/600/depositphotos_224853604-stock-illustration-restaurant-icon-icon-trendy-restaurant.jpg";
    Widget cloudImage = Image(image: NetworkImage(order.urlImage));
   
    return Card(
      elevation: 5.0,
      color: Colors.lightGreen[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 10.0, //MediaQuery.of(context).size.width,
        height: 100.0,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: ListTile(
            leading: cloudImage,
            title: Text('Rest: ${order.company}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Id: ${order.orderId}'),
                Text('Calls: ${order.calls}'),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.delivery_dining,
                  color: Colors.orangeAccent,
                ),
                Text(order.status),
              ],
            )
            ),
      ),
    );
  }
}

/*

CircleAvatar(
              backgroundImage: fadein,
              radius: 30.0,
            )

            /*trailing: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/gif/food.gif'),
                radius: 35.0,
              )*/

 Container(
                width: 40,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    makeWave(0, 500),
                    makeWave(100, 400),
                    makeWave(200, 300),
                    makeWave(300, 200),
                    makeWave(400, 100),
                    makeWave(500, 0),
                  ],
                ),
              )

 SlimyCard(
        color: Colors.red,
        width: 300,
        topCardHeight: 30,
        bottomCardHeight: 30,
        borderRadius: 15,
        topCardWidget: CircleAvatar(
          backgroundImage: AssetImage('lib/assets/png/cook.png'),
          radius: 35.0,
        ),
        bottomCardWidget: CircleAvatar(
          backgroundImage: AssetImage('lib/assets/png/cook.png'),
          radius: 35.0,
        ),
        slimeEnabled: true,
      );
Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Container(
          width: 10.0, //MediaQuery.of(context).size.width,
          height: 100.0,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/png/cook.png'),
                radius: 35.0,
              ),
              trailing: ),
        ),
      );

      */