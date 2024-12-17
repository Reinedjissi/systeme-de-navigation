import 'package:first_app/ui/pages/autres.page.dart';
import 'package:first_app/ui/pages/conter.page.dart';
import 'package:first_app/ui/pages/divers.page.dart';
import 'package:first_app/ui/pages/galerie.page.dart';
import 'package:first_app/ui/pages/home.page.dart';
import 'package:first_app/ui/pages/meteo.page.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/meteo": (context) => MeteoPage(),
        "/galerie": (context) => GaleriePage(),
        "/divers": (context) => DiversPage(),
        "/autres": (context) => AutresPage(),
        "/conter": (context) => ConterPage()


      },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
        initialRoute: "/",

    );
  }
}




