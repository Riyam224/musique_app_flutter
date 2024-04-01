import 'package:flutter/material.dart';
import 'package:musiqa_app/views/home_view.dart';
import 'package:musiqa_app/views/splash_view.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
