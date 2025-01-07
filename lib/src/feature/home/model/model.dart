import 'package:flutter/material.dart';

class ModelProduct {
  final String image, rating, title, subTitle, description;
  final int price,old, id;
  ModelProduct({
    required this.id,
    required this.image,
    required this.rating,
    required this.title,
    required this.price,
    required this.old,
    required this.subTitle,
    required this.description,
  });
}

class ModleImg {
  final String img;
  ModleImg({required this.img});
}

class ModelCatigorise {
  final String name;
  final Color color;
  ModelCatigorise({required this.name, required this.color});
}

