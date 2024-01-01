import 'package:flutter/material.dart';

class CouponCodeInput extends StatefulWidget {
  const CouponCodeInput({super.key});

  @override
  _CouponCodeInputState createState() => _CouponCodeInputState();
}

class _CouponCodeInputState extends State<CouponCodeInput> {
  TextEditingController _couponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
        ),
        Expanded(
          child: Container(
            height: 43,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                ),
              ],
            ),
            child: TextField(
              textAlign: TextAlign.start,
              controller: _couponController,
              decoration: const InputDecoration(
                hintText: 'Enter coupon code',
                alignLabelWithHint: true,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            String couponCode = _couponController.text;
          },
          style: ElevatedButton.styleFrom(
            primary: const Color(0XFF4C53A5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Apply',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _couponController.dispose();
    super.dispose();
  }
}
