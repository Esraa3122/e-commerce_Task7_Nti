import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:flutter/material.dart';

class DetailsOffer extends StatelessWidget {
  const DetailsOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorsApp.kSecondaryColor)),
          child: Text(
            "سماعات",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: ColorsApp.kTextColor),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 70,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: ColorsApp.kSecondaryColor)),
          child: Text(
            "كلاسيك",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: ColorsApp.kSecondaryColor),
          ),
        ),
        Spacer(),
        Container(
          width: 80,
          height: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          child: Text(
            "خصم %15",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
