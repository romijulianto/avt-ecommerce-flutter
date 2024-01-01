import "package:ecommerce_avatech/widget/CarItems.dart";
import "package:ecommerce_avatech/widget/CartAppBar.dart";
import "package:ecommerce_avatech/widget/CartButtonNavBar.dart";
import "package:ecommerce_avatech/widget/CouponCodeInput.dart";
import "package:flutter/material.dart";

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            /*TODO: temporary height */
            height: 600,
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
                const CarItems(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: const EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0XFF4C53A5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Add Coupon Code",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0XFF4C53A5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ]),
                ),
                const CouponCodeInput()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CartButtonNavBar(),
    );
  }
}
