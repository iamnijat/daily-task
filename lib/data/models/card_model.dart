import 'package:flutter/material.dart';

class CardModel {
  String name, imgUrl;
  Color backgroundColor;
  Color primaryColor;
  IconData icon;
  CardModel(this.name, this.backgroundColor, this.primaryColor, this.icon);
}

List<CardModel> cardModel = cardData
    .map((item) => CardModel(item['name'], item['backgroundColor'],
        item['primaryColor'], item['icon']))
    .toList();

var cardData = [
  {
    "name": "Video",
    "backgroundColor": const Color.fromRGBO(232, 249, 251, 1),
    "primaryColor": const Color.fromRGBO(0, 188, 212, 1),
    'icon': Icons.play_circle_fill_rounded,
  },
  {
    "name": "Image",
    "backgroundColor": const Color.fromRGBO(255, 245, 215, 1),
    "primaryColor": const Color.fromRGBO(255, 193, 7, 1),
    'icon': Icons.photo_size_select_actual_rounded
  },
  {
    "name": "Music",
    "backgroundColor": const Color.fromRGBO(235, 246, 254, 1),
    "primaryColor": const Color.fromRGBO(33, 150, 243, 1),
    'icon': Icons.my_library_music_outlined,
  },
  {
    "name": "Archive",
    "backgroundColor": const Color.fromRGBO(235, 246, 254, 1),
    "primaryColor": const Color.fromRGBO(55, 116, 77, 1),
    'icon': Icons.my_library_music,
  },
];
