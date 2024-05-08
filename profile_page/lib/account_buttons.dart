import 'package:flutter/material.dart';

class AccountButtons extends StatelessWidget {
  const AccountButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'VIEW MY LISTINGS',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          const VerticalDivider(
            width: 20,
            thickness: 10,
            indent: 20,
            endIndent: 0,
            color: Colors.red,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'DELETE ACCOUNT',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
