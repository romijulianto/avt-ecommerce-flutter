import 'package:ecommerce_avatech/widget/CategoriesWidget.dart';
import 'package:ecommerce_avatech/widget/HomeAppBar.dart';
import 'package:ecommerce_avatech/widget/ItemsWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const HomeAppBar(),
        Container(
          /* TODO: temporary height */
          // height: 500,
          padding: const EdgeInsets.only(top: 15),
          decoration: const BoxDecoration(
            color: Color(0XFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              /* TODO: search widget */
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search product here.."),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.search_outlined,
                      size: 27,
                      color: Color(0XFF4C53A5),
                  )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF4C53A5),
                  ),
                ),
              ),

              /* TODO: add CategoriesWidget */
              const CategoriesWidget(),

              /* TODO: Items product */
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF4C53A5),
                  ),
                ),
              ),

              const ItemsWIdget()
            ],
          ),
        ),
      ],
    )
    );
  }
}
