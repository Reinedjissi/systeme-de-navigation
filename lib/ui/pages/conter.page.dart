import 'package:flutter/material.dart';

class ConterPage extends StatefulWidget {
  @override
  State<ConterPage> createState() => _ConterPageState();
}

class _ConterPageState extends State<ConterPage> {
  int conter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Compteur"), // Correction de l'orthographe
      ),
      body: Center(
        child: Text(
          "Valeur du compteur: $conter", // Amélioration de la phrase
          style: const TextStyle(fontSize: 22, color: Colors.deepOrange), // Ajout de const
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                conter--; // Utilisation de l'opérateur de décrémentation
              });
              print(conter);
            },
            child: const Icon(Icons.remove), // Ajout de const
          ),
          const SizedBox(width: 8), // Ajout de const
          FloatingActionButton(
            onPressed: () {
              setState(() {
                conter++; // Utilisation de l'opérateur d'incrémentation
              });
              print(conter);
            },
            child: const Icon(Icons.add), // Ajout de const
          ),
        ],
      ),
    );
  }
}