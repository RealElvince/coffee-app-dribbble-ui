import 'package:coffeedribbleapp/widgets/product_appbar.dart';
import 'package:coffeedribbleapp/widgets/product_bottombar.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: const DecorationImage(
            image: AssetImage(
              'images/latte.png',
            ),
            fit: BoxFit.cover,
            opacity: 0.9),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: ProductAppBar(),
        ),
        bottomNavigationBar: ProductBottomBar(),
      ),
    );
  }
}
