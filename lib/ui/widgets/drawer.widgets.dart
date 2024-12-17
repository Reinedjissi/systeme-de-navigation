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
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/ok.jpg"),
                    radius: 50,
                  ),

                  CircleAvatar(
                    backgroundImage: AssetImage("images/ok.jpg"),
                    radius: 50,
                  ),
                ],
              ),
            ),
          ),
          ...(GlobalParams.menus as List<Map<String, dynamic>>).map((item) {
            return ListTile(
              title: Text(item["title"], style: TextStyle(fontSize: 20)),
              leading: item["icon"],
              trailing: Icon(Icons.arrow_right, color: Colors.orange),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, item["route"]);
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}

class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {
      "title": "Home",
      "icon": Icon(Icons.home),
      "route": "/home",
    },
    {
      "title": "Settings",
      "icon": Icon(Icons.settings),
      "route": "/settings",
    },
    // Ajoutez d'autres éléments de menu ici
  ];
}