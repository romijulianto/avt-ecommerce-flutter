import 'package:ecommerce_avatech/widget/HomeAppBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const HomeAppBar(),
        Container(
          /* TODO: temporary height */
          height: 500,
          padding: const EdgeInsets.only(),
          decoration: const BoxDecoration(
            color: Color(0XFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
        ),
      ],
    )
    );
  }
}
