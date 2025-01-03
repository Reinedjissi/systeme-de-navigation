import 'package:flutter/material.dart';

class MeteoPage extends StatelessWidget {
  const MeteoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("METEO"),
        actions: [
          Icon(Icons.account_circle),
          Icon(Icons.output_outlined ),
        ],
        // Ajout de const pour l'optimisation
      ),
      body: Center(
        child: Text(
          "Météo page", // Correction de l'accent sur "Météo"
          style: Theme.of(context).textTheme.displaySmall ?? const TextStyle(), // Gestion de la nullabilité
        ),
      ),
    );
  }
}