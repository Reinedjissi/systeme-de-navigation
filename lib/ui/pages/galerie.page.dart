import 'package:flutter/material.dart';

class GaleriePage extends StatelessWidget {
  const GaleriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.account_circle),
          Icon(Icons.output_outlined),
        ],
        backgroundColor: Colors.deepOrange,
        title: const Text("GALERIE"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          buildImageBlock(
            context,
            "assets/images/logo.jpeg",
            "Exemple de cadeau à offrir pour Noël",
          ),
          buildImageBlock(
            context,
            "assets/images/logo.jpeg",
            "Exemple de cadeau à offrir pour Noël",
          ),
          buildImageBlock(
            context,
            "assets/images/logo.jpeg",
            "Exemple de cadeau à offrir pour Noël",
          ),
          buildImageBlock(
            context,
            "assets/images/logo.jpeg",
            "Exemple de cadeau à offrir pour Noël",
          ),
          // Ajoute d'autres blocs d'images ici si nécessaire
        ],
      ),
    );
  }

  Widget buildImageBlock(BuildContext context, String imagePath, String description) {
    return Column(
      children: [
        Builder(
          builder: (context) {
            return SizedBox(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          height: 150,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          description,
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Détails de l\'image'),
                                content: Text(description), // Affiche la description complète
                                actions: [
                                  TextButton(
                                    child: Text('Fermer'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text('Voir plus'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        ),
      ],
    );
  }
}