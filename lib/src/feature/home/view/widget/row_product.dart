import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class RowProduct extends StatelessWidget {
  const RowProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Text(
            "المنتجات",
            style: TextStyle(color: ColorsApp.kSecondaryColor, fontSize: 30),
          ),
          Spacer(),
          Icon(Icons.move_down_outlined)
        ],
      ),
    );
  }
}
