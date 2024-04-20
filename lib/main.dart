import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: 180,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 20),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          Icon(
                            Icons.handshake_rounded,
                            color: Colors.black,
                          ),
                          Text(
                            'Trade Finderz',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 20),
                      child: IconButton(
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  new CardHolder(),
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardHolder extends StatefulWidget {
  const CardHolder({super.key});

  @override
  State<CardHolder> createState() => _CardHolderState();
}

class _CardHolderState extends State<CardHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 150, right: 20, left: 20),
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
          ]),
      child: new Card(),
    );
  }
}

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/822.jpg'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(100),
            border:
                Border.all(color: Colors.blueAccent.withOpacity(.2), width: 1),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Yousef Adel',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 250,
          child: const Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
            style: TextStyle(
              color: Color.fromARGB(255, 107, 104, 104),
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
              children: [
                Text('First Name'),
                Text('Last Name'),
                Text('email'),
                Text('Phone'),
                Text('Second Phone'),
              ],
            ),
          ],
        )
      ],
    );
  }
}
