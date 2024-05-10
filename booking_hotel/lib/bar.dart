import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: const EdgeInsets.all(5),
      child: Row(children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image:
                  AssetImage('assets/images/lincoln-park-neighborhood-1.jpg'),
              fit: BoxFit.fill,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 16, 52, 83).withOpacity(.15),
                  blurRadius: 10,
                  offset: Offset.fromDirection(2, 10),
                  spreadRadius: 5),
            ],
          ),
        ),
        const Column(
          children: [
            Row(
              children: [
                SizedBox(width: 15),
                Icon(
                  Icons.hotel,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  ' Royal Albert Hotel',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  '231 East 95th Street, HK',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
