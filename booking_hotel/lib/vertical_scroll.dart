import 'package:booking_hotel/bar.dart';
import 'package:flutter/material.dart';

class VerticalScroll extends StatelessWidget {
  const VerticalScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 80,
      child: ListView(
        children: const [
          Bar(),
          Bar(),
          Bar(),
        ],
      ),
    );
  }
}
