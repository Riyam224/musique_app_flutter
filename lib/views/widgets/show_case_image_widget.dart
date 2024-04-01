// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class ShowcaseImageWidget extends StatelessWidget {
  const ShowcaseImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/2.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 367,
          ),
        ),
        // todo
        Positioned(
          top: 240,
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              children: [
                Text('A.L.O.N.E',
                    style: TextStyle(
                      fontSize: 36,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    )),
                SizedBox(
                  height: 11,
                ),
                Container(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Subscribe',
                      style: TextStyle(
                        color: Color(0xff131313),
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFF2E00),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
