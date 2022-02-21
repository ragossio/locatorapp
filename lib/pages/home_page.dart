import 'package:flutter/material.dart';
import 'package:locator/pages/historia_page.dart';
import 'package:locator/pages/pedidos_page.dart';
import 'package:locator/providers/ui_provider.dart';
import 'package:locator/widgets/custom_nav.dart';
import 'package:locator/widgets/floating_buttom.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<UIProvider>(context);
    final currentStateColorNotify = providerdata.colorNotify;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: currentStateColorNotify,
        centerTitle: true,
        title: Text('Localizador Virtual'),
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60.0),
            bottomRight: Radius.circular(60.0),
          ),
        ),
        bottom: PreferredSize(
          child: SizedBox(),
          preferredSize: Size.fromHeight(80.0),
        ),
      ),
      body: _HomePage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomWidgetFloatingButtom(),
      bottomNavigationBar: CustomWidgetNavBar(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = <Widget>[
      Pedidos(),
      Historial(),
    ];

    final notifyContext = Provider.of<UIProvider>(context);
    final int currentPageNumber = notifyContext.currentPage;
    final Widget current = _pages[currentPageNumber];

    return current;
  }
}
