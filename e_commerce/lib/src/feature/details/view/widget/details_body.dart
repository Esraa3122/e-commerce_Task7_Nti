import 'package:e_commerce/src/feature/details/view/widget/Detailse_old_price.dart';
import 'package:e_commerce/src/feature/details/view/widget/details_describtion.dart';
import 'package:e_commerce/src/feature/details/view/widget/details_img.dart';
import 'package:e_commerce/src/feature/details/view/widget/details_offer.dart';
import 'package:e_commerce/src/feature/details/view/widget/details_price.dart';
import 'package:e_commerce/src/feature/details/view/widget/row_color.dart';
import 'package:e_commerce/src/feature/details/view/widget/row_icons.dart';
import 'package:e_commerce/src/feature/home/model/model.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.modelProduct});
      final ModelProduct modelProduct;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: [
              DetailsImg(img: modelProduct.image,),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: List.filled(2, BoxShadow(color: Colors.grey)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal:20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailsOffer(),
                      DetailsDescribtion(subtitle: modelProduct.subTitle,),
                      DetailsPrice(price: modelProduct.price, rate: modelProduct.rating),
                      DetailseOldPrice(oldPrice: modelProduct.old),
                      RowIcons(),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 20,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: List.filled(2, BoxShadow(color: Colors.grey)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal:20),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       DetailsDescribtion(subtitle: "اختر اللون",),
                        SizedBox(height: 20,),
                        RowColor(),
                        SizedBox(height: 20,),
                     ],
                   ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}