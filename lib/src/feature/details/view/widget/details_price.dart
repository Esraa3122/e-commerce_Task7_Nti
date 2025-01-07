import 'package:e_commerce/src/core/style/size_app.dart';
import 'package:flutter/material.dart';

class DetailsPrice extends StatelessWidget {
  const DetailsPrice({super.key, required this.price, required this.rate});

  final int price;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${price} ر.س",
            style: TextStyle(color: Colors.red, fontSize: SizeApp.s20)),
        Spacer(),
        Text(rate)
      ],
    );
  }
}
