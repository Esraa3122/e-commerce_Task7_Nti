import 'package:e_commerce/src/feature/home/model/list_product.dart';
import 'package:e_commerce/src/feature/home/view/widget/home_card.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 15,
            childAspectRatio: 165 / 250),
        itemBuilder: (context, index) {
          return CardProduct(modelProduct: products[index]);
        },
      ),
    );
  }
}
