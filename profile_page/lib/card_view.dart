import 'package:flutter/material.dart';
import 'package:profile_page/account_buttons.dart';
import 'package:profile_page/subscription.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/images.png'),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(100),
            border:
                Border.all(color: Colors.blueAccent.withOpacity(.2), width: 1),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Yousef Adel',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 250,
          child: Text(
            'It is a long established fact that a reader will be distracted.',
            style: TextStyle(
              color: Color.fromARGB(255, 107, 104, 104),
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Divider(
          height: 50,
          indent: 20,
          endIndent: 25,
        ),
        Container(
          margin: const EdgeInsets.only(right: 225, bottom: 10),
          child: const Text(
            'PERSONAL',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        const Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('First Name'),
                Text('Last Name'),
                Text('email'),
                Text('Phone'),
                Text('Second Phone'),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Yousef'),
                Text('Eldosoky'),
                Text('yousefadel748@gmail.com'),
                Text('+201121986371'),
                Text('+2026037027'),
              ],
            ),
          ],
        ),
        const Divider(
          height: 40,
          indent: 20,
          endIndent: 25,
        ),
        const Subscription(),
        const Divider(
          height: 30,
          indent: 20,
          endIndent: 25,
        ),
        const AccountButtons(),
      ],
    );
  }
}
