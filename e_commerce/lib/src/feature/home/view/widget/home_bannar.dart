import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:e_commerce/src/feature/home/model/list_product.dart';
import 'package:e_commerce/src/feature/home/view/widget/custom_container_linear.dart';
import 'package:flutter/material.dart';

class BannerSliders extends StatefulWidget {
  const BannerSliders({super.key});

  @override
  State<BannerSliders> createState() => _BannerSlidersState();
}

class _BannerSlidersState extends State<BannerSliders> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 160,
              reverse: true,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                activeIndex = index;
                setState(() {});
              },
            ),
            itemBuilder: (context, index, realIndex) {
              return CustomContainerLinear(modleImg: listimg[index],);
            },
            itemCount: listimg.length,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listimg.map((e) {
              return Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsApp.kSecondaryColor),
                  borderRadius: BorderRadius.circular(10),
                  color: activeIndex == listimg.indexOf(e)
                     ? ColorsApp.kSecondaryColor
                      : Colors.white,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
