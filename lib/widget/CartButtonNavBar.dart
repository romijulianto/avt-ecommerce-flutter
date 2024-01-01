import "package:flutter/material.dart";

class CartButtonNavBar extends StatelessWidget {
  const CartButtonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 130,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total :",
                    style: TextStyle(
                      color: Color(0XFF4C53A5),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp 220.000",
                    style: TextStyle(
                      color: Color(0XFF4C53A5),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0XFF4C53A5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Payment",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
