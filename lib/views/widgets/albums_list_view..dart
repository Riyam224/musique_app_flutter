// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:musiqa_app/models/album_model.dart';

class AlbumsListView extends StatelessWidget {
  const AlbumsListView({super.key});
  // todo model

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // todo
        itemCount: info.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    // todo
                    info[index].image,
                    width: 119,
                    height: 140,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    // todo
                    info[index].albumName,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffCBC8C8),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Text(
                    // todo
                    info[index].albumYear,
                    style: TextStyle(
                      color: Color(0xff847D7D),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
