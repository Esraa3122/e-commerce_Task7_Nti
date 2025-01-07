import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class RowPriceHome extends StatelessWidget {
  const RowPriceHome({super.key, required this.price, required this.old});

  final int price;
  final int old;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text("${price}ر.س",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
      Text("${old}ر.س",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.lineThrough,
              color: ColorsApp.kTextLightColor)),
    ]);
  }
}
