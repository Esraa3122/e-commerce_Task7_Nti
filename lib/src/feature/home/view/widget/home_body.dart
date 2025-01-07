import 'package:e_commerce/src/feature/home/view/widget/catagorise_list.dart';
import 'package:e_commerce/src/feature/home/view/widget/home_bannar.dart';
import 'package:e_commerce/src/feature/home/view/widget/product_list.dart';
import 'package:e_commerce/src/feature/home/view/widget/row_category.dart';
import 'package:e_commerce/src/feature/home/view/widget/row_product.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: () async {},
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: BannerSliders(),
            ),
            SliverToBoxAdapter(
              child: RowCategory(),
              ),
            SliverToBoxAdapter(
              child: CatagoriseList(),
            ),
            SliverToBoxAdapter(
              child: RowProduct()
              ),
            SliverToBoxAdapter(
              child: ProductList(),
            ),
          ],
        ));
  }
}
