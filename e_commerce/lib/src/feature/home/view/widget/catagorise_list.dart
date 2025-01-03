import 'package:e_commerce/src/feature/home/model/list_product.dart';
import 'package:e_commerce/src/feature/home/view/widget/catigory_item.dart';
import 'package:flutter/material.dart';

class CatagoriseList extends StatelessWidget {
  const CatagoriseList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 100,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CatigoryItem(modelCatigorise: listcatigor[index]);
            },
            separatorBuilder: (context, index) => SizedBox(
                  width: 15,
                ),
            itemCount: listcatigor.length),
      ),
    );
  }
}
