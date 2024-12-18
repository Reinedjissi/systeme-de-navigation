import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.deepOrange,
                ],
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/ok.jpg"),
                    radius: 30,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("images/ok.jpg"),
                    radius: 50,
                  ),
                ],
              ),
            ),
          ),
          ...GlobalParams.menus.map((item) {
            return ListTile(
              title: Text(item["title"], style: const TextStyle(fontSize: 20)),
              leading: item["icon"],
              trailing: const Icon(Icons.arrow_right, color: Colors.orange),
              onTap: () {
                Navigator.of(context).pop(); // Ferme le tiroir
                Navigator.pushNamed(context, item["route"]); // Navigue vers la route
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}

class GlobalParams {
  static const List<Map<String, dynamic>> menus = [
    {
      "title": "Home",
      "icon": Icon(Icons.home),
      "route": "/",
    },
    {
      "title": "Météo",
      "icon": Icon(Icons.wb_sunny),
      "route": "/meteo",
    },
    {
      "title": "Galerie",
      "icon": Icon(Icons.photo),
      "route": "/galerie",
    },
    {
      "title": "Divers",
      "icon": Icon(Icons.category),
      "route": "/divers",
    },
    {
      "title": "Autres",
      "icon": Icon(Icons.more_horiz),
      "route": "/autres",
    },
    {
      "title": "Compteur",
      "icon": Icon(Icons.add),
      "route": "/conter",
    },
  ];
}