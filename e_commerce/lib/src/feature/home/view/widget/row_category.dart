import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class RowCategory extends StatelessWidget {
  const RowCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Text(
            "الأقسام",
            style: TextStyle(color: ColorsApp.kSecondaryColor, fontSize: 30),
          ),
          Spacer(),
          Text("كل الأقسام",
              style: TextStyle(
                color: ColorsApp.kSecondaryColor,
                fontSize: 16,
                decoration: TextDecoration.underline,
                decorationColor: ColorsApp.kSecondaryColor,
                decorationStyle: TextDecorationStyle.solid,
              ))
        ],
      ),
    );
  }
}
