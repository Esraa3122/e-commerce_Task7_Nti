import 'package:flutter/material.dart';
import 'package:e_commerce/src/feature/home/model/model.dart';

class CatigoryItem extends StatelessWidget {
  const CatigoryItem({
    super.key,
    required this.modelCatigorise,
  });

  final ModelCatigorise modelCatigorise;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: modelCatigorise.color,
          ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          modelCatigorise.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
