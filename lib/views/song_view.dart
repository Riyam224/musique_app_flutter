// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SongView extends StatelessWidget {
  SongView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 600,
              child: Image.asset('assets/images/Rectangle 38.png',
                  fit: BoxFit.cover),
            ),
            Positioned(
              bottom: 0,
              left: 85,
              child: Text(
                'Welcome to Samdal-ri',
                style: TextStyle(
                  color: Color(0xfff99c14),
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
          height: 314.2,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Text('Youlakou',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )),
                // todo
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    right: 20,
                    bottom: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dynamic Warmup | ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '4 min',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                // todo progressbar
                Container(
                  width: 360,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xfff99c14),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // todo
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 60, right: 60),
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.skip_previous,
                        color: Color(0xfff99c14),
                        size: 50,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        child: IconButton(
                            onPressed: () {
                              // todo
                              final player = AudioPlayer();
                              player.play(
                                AssetSource('sounds/Welcome.mp3'),
                              );
                            },
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                              size: 40,
                            )),
                        decoration: BoxDecoration(
                          color: Color(0xfff99c14),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Color(0xfff99c14),
                        size: 50,
                      ),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
