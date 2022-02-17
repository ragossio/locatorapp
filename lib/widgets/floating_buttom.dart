import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CustomWidgetFloatingButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      height: 90.0,
      width: 90.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: -2,
            blurRadius: 9,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: FittedBox(
        fit: BoxFit.cover,
        child: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.filter_center_focus_sharp),
          //backgroundColor: Colors.orangeAccent,
          onPressed: () {
            _barCode();
          },
        ),
      ),
    );
  }

  void _barCode() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'CANCELAR', false, ScanMode.BARCODE);

    print(barcodeScanRes);
  }
}
