import 'package:booking_hotel/card_holder.dart';
import 'package:booking_hotel/location.dart';
import 'package:booking_hotel/search_bar_app.dart';
import 'package:booking_hotel/vertical_scroll.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue[50]),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Row(
            children: [
              Container(
                width: 135,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue[100],
                ),
                child: const Location(),
              ),
              const SizedBox(
                width: 170,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset.fromDirection(8, 5),
                    ),
                  ],
                  image: const DecorationImage(
                      image: AssetImage('assets/images/images.png'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      color: Colors.blueAccent.withOpacity(.2), width: 1),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.blue[50],
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 40),
              child: const Text(
                'Welcome to USA, Georgina!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(20),
              child: const SearchBarApp(),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 25, top: 10),
              child: const Text(
                'Favorite Places',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const CardHolder(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(20),
              child: const Text(
                'Nearst Places',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            VerticalScroll(),
          ],
        ),
      ),
    );
  }
}
