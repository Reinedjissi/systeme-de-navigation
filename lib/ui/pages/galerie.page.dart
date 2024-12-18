import 'package:flutter/material.dart';

class GaleriePage extends StatelessWidget {
  const GaleriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GALERIE"), // Ajout de const pour l'optimisation
      ),
      body: Center(
        child: Text(
          "GALERIE page",
          style: Theme.of(context).textTheme.displaySmall ?? const TextStyle(), // Gestion de la nullabilité
        ),
      ),
    );
  }
}