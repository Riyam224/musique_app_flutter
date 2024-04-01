// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_las
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musiqa_app/views/widgets/albums_list_view..dart';
import 'package:musiqa_app/views/widgets/show_case_image_widget.dart';
import 'package:musiqa_app/views/widgets/song_list_view_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: Column(
        children: [
          // todo ____________________________________
          ShowcaseImageWidget(),
          // todo _________________________
          SizedBox(
            height: 15,
          ),
          // todo____________________________
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 21,
                height: 7,
                decoration: BoxDecoration(
                  color: Color(0xffFF3D00),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  color: Color(0xff9F9F9F),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              SizedBox(width: 5),
              Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  color: Color(0xff9F9F9F),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ],
          ),
          // todo ________________________
          SizedBox(
            height: 15,
          ),
          // todo ______________________
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discography',
                  style: TextStyle(
                    color: Color(0xffFF2E00),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xffF8A245),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
          ),
          // todo ___________________________
          SizedBox(
            height: 31,
          ),
          // todo ___________________________
          AlbumsListView(),
          // todo _________________________
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular singles',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xffF8A245),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
          ),

          // todo ___________________________
          SizedBox(
            height: 10,
          ),
          // todo __________________
          SongListView(),
        ],
      ),
    );
  }
}
