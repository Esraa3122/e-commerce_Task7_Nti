import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:e_commerce/src/core/style/size_app.dart';
import 'package:e_commerce/src/feature/details/view/screen/details_screen.dart';
import 'package:e_commerce/src/feature/home/model/model.dart';
import 'package:e_commerce/src/feature/home/view/widget/home_img.dart';
import 'package:e_commerce/src/feature/home/view/widget/row_icon_card_home.dart';
import 'package:e_commerce/src/feature/home/view/widget/row_price_home.dart';
import 'package:flutter/material.dart';


class CardProduct extends StatelessWidget {
  const CardProduct(
      {super.key, required this.modelProduct,});

  final ModelProduct modelProduct;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(modelProduct: modelProduct),
          ),
        );
      },
      child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                 children: [        
                   Expanded(child: ImageCard(img: modelProduct.image,)),
                    Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    modelProduct.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: SizeApp.s20),
                          ),
                   Text(
                 modelProduct.rating,
                 style: TextStyle(fontSize: SizeApp.s17,color: ColorsApp.kTextColor)),
                 SizedBox(height: 10,),
                 RowPriceHome(price: modelProduct.price, old: modelProduct.old,),
                   SizedBox(height: 10,),
                   RowIconCardHome(),
                  SizedBox(height: 10,)
                 ],
            ),
          ),
       ),
    );
  }
}
