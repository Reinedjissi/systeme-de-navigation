import 'package:flutter/material.dart';

import '../widgets/drawer.widgets.dart';

class DiversPage extends StatelessWidget {
  const DiversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.account_circle),
          Icon(Icons.output_outlined)
        ],
        backgroundColor: Colors.deepOrange,
        title: const Text("DIVERS"), // Ajout de const pour l'optimisation
      ),
      body: Center(
        child: Text(
          "DIVERS page",
          style: Theme.of(context).textTheme.displaySmall ?? const TextStyle(), // Gestion de la nullabilité
        ),
      ),
    );
  }
}