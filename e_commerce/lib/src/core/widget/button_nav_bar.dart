import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:e_commerce/src/feature/home/cubit/product_cubit.dart';
import 'package:flutter/material.dart';

class ButtonNanBar extends StatelessWidget {
  const ButtonNanBar({super.key, required this.cubit});
  final ProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 17,
      unselectedFontSize: 16,
      showSelectedLabels: true,
      iconSize: 30,
      backgroundColor: ColorsApp.kPrimaryColor,
     currentIndex: cubit.index,
      onTap: (idex){
        cubit.colorbar(value:idex);
      },
      selectedItemColor: ColorsApp.kSecondaryColor,
      unselectedItemColor: ColorsApp.kTextLightColor,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "الرئيسيه"),
        BottomNavigationBarItem(icon: Icon(Icons.category_outlined), label: "الاقسام"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "السلة"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "المفضلة"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined), label: "المزيد")
      ],
    );
  }
}