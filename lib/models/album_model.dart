import 'package:audioplayers/audioplayers.dart';

class SongInfoModel {
  final String image;
  final String albumName;
  final String albumYear;
  final String songName;
  final String songImage;
  final String sound;

  SongInfoModel(
      {required this.image,
      required this.albumName,
      required this.albumYear,
      required this.songName,
      required this.songImage,
      required this.sound});

// todo play sound
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

// todo list of the songinfo
List<SongInfoModel> info = [
  SongInfoModel(
      image: 'assets/images/Rectangle 38.png',
      albumName: 'Alone ',
      albumYear: '2023',
      songName: 'alone',
      songImage: 'assets/images/resize-1711997955598096443c.jpg',
      sound: 'sounds//ote2.wav'),
  SongInfoModel(
      image: 'assets/images/Rectangle 39.png',
      albumName: 'Heartless ',
      albumYear: '2023',
      songName: 'kisarya',
      songImage: 'assets/images/resize-17119980831600165739a.jpg',
      sound: 'sounds//ote3.wav'),
  SongInfoModel(
      image: 'assets/images/Rectangle 32.png',
      albumName: 'Dead inside',
      albumYear: '2020',
      songName: 'way back home',
      songImage: 'assets/images/resize-17119981571671183918d.jpg',
      sound: 'sounds//ote1.wav'),
  SongInfoModel(
      image: 'assets/images/Rectangle 38.png',
      albumName: 'Alone ',
      albumYear: '2023',
      songName: 'old days',
      songImage: 'assets/images/resize-1711997955598096443c.jpg',
      sound: 'sounds//ote2.wav'),
  SongInfoModel(
      image: 'assets/images/Rectangle 39.png',
      albumName: 'Heartless ',
      albumYear: '2023',
      songName: 'you are beautiful',
      songImage: 'assets/images/resize-17119980831600165739a.jpg',
      sound: 'sounds//ote3.wav'),
  SongInfoModel(
      image: 'assets/images/Rectangle 32.png',
      albumName: 'Dead inside',
      albumYear: '2020',
      songName: 'crush',
      songImage: 'assets/images/resize-17119981571671183918d.jpg',
      sound: 'sounds//ote1.wav'),
];
