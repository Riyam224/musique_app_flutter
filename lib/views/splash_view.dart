// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musiqa_app/views/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000000),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                // todo
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 648,
                      child: Image.asset(
                        'assets/images/1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        top: 470,
                        left: 44,
                      ),
                      child:
                          Text('Dancing between \n The shadows \n Of rhythm ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                              )),
                    ))
                  ],
                ),
                // todo
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // todo
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeView();
                      }));
                    },
                    child: Text(
                      'Get started',
                      style: const TextStyle(
                        color: Color(0xff131313),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFF2E00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffFF2E00),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Get started',
                      style: const TextStyle(
                        color: Color(0xffFF2E00),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'by continuing you agree to terms \n of services and  Privacy policy',
                  style: TextStyle(
                    color: Color(0xffCBC8C8),
                  ),
                ),
              ],
            )));
  }
}
