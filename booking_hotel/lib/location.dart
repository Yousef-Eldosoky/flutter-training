import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.location_on_rounded,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Chicago, USA',
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
