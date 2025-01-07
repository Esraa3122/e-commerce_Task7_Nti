import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class RowIconCardHome extends StatelessWidget {
  const RowIconCardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
              color: ColorsApp.kSecondaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "إضافة الى السلة",
                style: TextStyle(color: Colors.white),
              ),
              Icon(Icons.shopping_cart_outlined, color: Colors.white),
            ],
          ),
        ),
        Spacer(),
        Icon(Icons.favorite_border_outlined, color: ColorsApp.kTextLightColor)
      ],
    );
  }
}
