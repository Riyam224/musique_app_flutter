// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musiqa_app/models/album_model.dart';

class SongListView extends StatelessWidget {
  const SongListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: info.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 72,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      info[index].songImage,
                      width: 67,
                      height: 72,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150, top: 10),
                      child: Column(
                        children: [
                          Text(
                            info[index].songName,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffCBC8C8),
                            ),
                          ),
                          Row(
                            children: [
                              Text(info[index].albumYear,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff847D7D),
                                  )),
                              Text(
                                '* Easy Living',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff847D7D),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // todo
                    Icon(
                      Icons.more_vert,
                      size: 40,
                      color: Color(0xffD9D9D9),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
