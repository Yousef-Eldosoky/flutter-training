import 'package:flutter/material.dart';
import 'package:profile_page/card_holder.dart';

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
              child: SizedBox(
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
                            'Trade Finder',
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
                children: const <Widget>[
                  CardHolder(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
