import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:e_commerce/src/feature/home/model/model.dart';
import 'package:flutter/material.dart';

class CustomContainerLinear extends StatelessWidget {
  const CustomContainerLinear({
    super.key, required this.modleImg, 
  });
  final ModleImg modleImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: CachedNetworkImageProvider(
                  modleImg.img,
                  ),
              fit: BoxFit.fill,
              ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: ColorsApp.kBackgroundColor.withOpacity(0.8),
              offset: const Offset(0, 4),
              blurRadius: 8,
            )
          ]
          ),
    );
  }
}
