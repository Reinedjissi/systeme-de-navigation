import 'package:flutter/material.dart';
import '../widgets/drawer.widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(), // Ajout de const pour l'optimisation
      appBar: AppBar(
        title: const Text(
          "HOME",
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 20,
          ),
        ),
      ),
      body: const Center( // Ajout de const pour le widget Center
        child: Text("HOME PAGE"), // Ajout de const pour le widget Text
      ),
    );
  }
}