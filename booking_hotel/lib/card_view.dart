import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150 * 1.2,
      height: 200 * 1.2,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/lincoln-park-neighborhood-1.jpg'),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
              color: const Color.fromARGB(255, 16, 52, 83).withOpacity(.25),
              blurRadius: 15,
              offset: Offset.fromDirection(2, 10),
              spreadRadius: 5),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: BlurryContainer(
              blur: 5,
              width: 160,
              height: 105,
              color: Colors.transparent,
              padding: const EdgeInsets.all(8),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lincoin Park',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        '34 West 57th Street, PH',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Text(
                        '9.8 mi',
                        style: TextStyle(
                          fontSize: 8,
                        ),
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                      Container(
                        width: 74,
                        height: 30,
                        padding: EdgeInsets.zero,
                        child: FilledButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.white),
                            foregroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Detail',
                            style: TextStyle(
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
