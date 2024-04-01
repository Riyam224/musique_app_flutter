// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongView extends StatelessWidget {
  const SongView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 550,
              child: Image.asset('assets/images/Rectangle 38.png',
                  fit: BoxFit.cover),
            ),
            Positioned(
              bottom: 0,
              left: 90,
              child: Text(
                'Alone in the Abyss',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: 'Inter',
                ),
              ),
            )
          ],
        ),
        Container(
            width: double.infinity,
            height: 364.25,
            color: Colors.black,
            child: Column(
              children: [
                Text('Youlakou',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    )),
              ],
            ))
      ],
    ));
  }
}
