import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.account_circle),
          Icon(Icons.output_outlined)
        ],
        backgroundColor: Colors.deepOrange,
        title: const Text("Compteur"), // Correction de l'orthographe
      ),
      body: Center(
        child: Text(
          "Valeur du compteur: $counter", // Amélioration de la phrase
          style: const TextStyle(fontSize: 22, color: Colors.deepOrange), // Ajout de const
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter--; // Utilisation de l'opérateur de décrémentation
              });
              print(counter);
            },
            child: const Icon(Icons.remove), // Ajout de const
          ),
          const SizedBox(width: 8), // Ajout de const
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++; // Utilisation de l'opérateur d'incrémentation
              });
              print(counter);
            },
            child: const Icon(Icons.add), // Ajout de const
          ),
        ],
      ),
    );
  }
}