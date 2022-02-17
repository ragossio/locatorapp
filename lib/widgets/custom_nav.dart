import 'package:flutter/material.dart';
import 'package:locator/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomWidgetNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifyContext = Provider.of<UIProvider>(context);
    final int currentPageNumber = notifyContext.currentPage;

    return BottomNavigationBar(
      elevation: 10,
      iconSize: 30.0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_outlined),
          label: 'Pedidos',
          //backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Historial',
          //backgroundColor: Colors.green,
        ),
      ],
      currentIndex: currentPageNumber,
      selectedItemColor: Colors.orangeAccent[800],
      onTap: (i) {
        notifyContext.currentPage = i;
        if (i == 1) {
          notifyContext.colorNotify = Colors.red;
        } else {
          notifyContext.colorNotify = Colors.blue;
        }
      },
    );
  }
}
