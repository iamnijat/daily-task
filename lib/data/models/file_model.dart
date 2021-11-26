import 'package:flutter/material.dart';

class FileModel {
  String title, subtitle;
  Color backgroundColor;
  Color primaryColor;
  IconData icon;
  FileModel(this.title, this.subtitle, this.backgroundColor, this.primaryColor,
      this.icon);
}

List<FileModel> fileModel = fileData
    .map((item) => FileModel(item['title'], item['subtitle'],
        item['backgroundColor'], item['primaryColor'], item['icon']))
    .toList();

var fileData = [
  {
    "title": "Franky Wah - Aftertime",
    "subtitle": "mp3 · 9.2 mb",
    "backgroundColor": const Color.fromRGBO(232, 249, 251, 1),
    "primaryColor": const Color.fromRGBO(0, 188, 212, 1),
    'icon': Icons.play_circle_fill_rounded,
  },
  {
    "title": "Annie's new car",
    "subtitle": "jpg · 4.8 mb",
    "backgroundColor": const Color.fromRGBO(255, 245, 215, 1),
    "primaryColor": const Color.fromRGBO(255, 193, 7, 1),
    'icon': Icons.photo_size_select_actual_rounded
  },
  {
    "title": "Top secret archive",
    "subtitle": "zip · 3.7 gb",
    "backgroundColor": const Color.fromRGBO(235, 246, 254, 1),
    "primaryColor": const Color.fromRGBO(33, 150, 243, 1),
    'icon': Icons.my_library_music_outlined,
  },
  {
    "title": "On the top of the world",
    "subtitle": "doc · 2.3 mb",
    "backgroundColor": const Color.fromRGBO(235, 246, 254, 1),
    "primaryColor": const Color.fromRGBO(55, 116, 77, 1),
    'icon': Icons.my_library_music,
  },
];
