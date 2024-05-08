import 'package:flutter/material.dart';
import 'package:profile_page/card_view.dart';

class CardHolder extends StatefulWidget {
  const CardHolder({super.key});

  @override
  State<CardHolder> createState() => _CardHolderState();
}

class _CardHolderState extends State<CardHolder> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 80, right: 20, left: 20),
          height: 600,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 20,
                  spreadRadius: 10),
            ],
          ),
          child: const SizedBox.shrink(),
        ),
        const Positioned(
          top: 40,
          height: 600,
          width: 400,
          child: CardView(),
        ),
      ],
    );
  }
}
