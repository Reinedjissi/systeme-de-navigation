import 'package:first_app/ui/pages/autres.page.dart';
import 'package:first_app/ui/pages/conter.page.dart';
import 'package:first_app/ui/pages/divers.page.dart';
import 'package:first_app/ui/pages/galerie.page.dart';
import 'package:first_app/ui/pages/home.page.dart';
import 'package:first_app/ui/pages/meteo.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); // Ajout de const

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/", // Déplacement au-dessus de routes
      routes: {
        "/": (context) => const HomePage(), // Ajout de const
        "/meteo": (context) => const MeteoPage(), // Ajout de const
        "/galerie": (context) => const GaleriePage(), // Ajout de const
        "/divers": (context) => const DiversPage(), // Ajout de const
        "/autres": (context) => const AutresPage(), // Ajout de const
        "/conter": (context) => ConterPage(), // Ajout de const
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}