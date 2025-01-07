import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:e_commerce/src/feature/details/view/widget/details_app_bar.dart';
import 'package:e_commerce/src/feature/details/view/widget/details_body.dart';
import 'package:e_commerce/src/feature/home/model/model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.modelProduct});

  final ModelProduct modelProduct;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: appBar(context,title: modelProduct.title),
          backgroundColor: ColorsApp.kPrimaryColor,
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: DetailsBody(modelProduct: modelProduct,),
          )),
    );
  }
}
