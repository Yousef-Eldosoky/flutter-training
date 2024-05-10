import 'package:booking_hotel/card_view.dart';
import 'package:flutter/material.dart';

class CardHolder extends StatelessWidget {
  const CardHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CardView(),
          CardView(),
          CardView(),
        ],
      ),
    );
  }
}
