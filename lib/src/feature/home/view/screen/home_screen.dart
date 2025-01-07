import 'package:e_commerce/src/core/style/color_app.dart';
import 'package:e_commerce/src/core/widget/button_nav_bar.dart';
import 'package:e_commerce/src/feature/home/cubit/product_cubit.dart';
import 'package:e_commerce/src/feature/home/cubit/product_state.dart';
import 'package:e_commerce/src/feature/home/view/widget/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final scrollCOntroller = ScrollController();

  @override
  void dispose() {
    scrollCOntroller.dispose();
    super.dispose();
  }

  void scrollUp() {
    scrollCOntroller.animateTo(0,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
        ProductCubit cubit = BlocProvider.of(context);
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: ColorsApp.kPrimaryColor,
            bottomNavigationBar: ButtonNanBar(
              cubit: cubit,
            ),
            body: Stack(children: [
              HomeBody(
                scrollController: scrollCOntroller,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: scrollUp,
                      shape: CircleBorder(),
                      backgroundColor: ColorsApp.kTextColor,
                      child: Icon(
                        Icons.arrow_upward_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 30,
                      child: Image.network(
                          "https://2.bp.blogspot.com/-QfS1hyElLFk/XDdD551JV7I/AAAAAAAAGu0/ZwfoMBwMoiUAzSCHhP4QvHn_KyjaeecWQCK4BGAYYCw/s1600/logo%2Bwhatsapp.png"),
                    )
                  ],
                ),
              )
            ]),
          ),
        );
      }),
    );
  }
}
