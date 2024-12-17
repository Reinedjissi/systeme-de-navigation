import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalParams {
  static const List<Map<String, dynamic>> menus = [
    {
      "title": "conter",
      "icon": Icon(Icons.home, color: Colors.orange),
      "route": "/conter"
    },
    {
      "title": "meteo",
      "icon": Icon(Icons.camera, color: Colors.orange),
      "route": "/meteo"
    },
    {
      "title": "galerie",
      "icon": Icon(Icons.map, color: Colors.orange),
      "route": "/galerie"
    }
  ];
}