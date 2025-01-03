import 'package:flutter/material.dart';
import '../widgets/drawer.widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(), // Ajout de const pour l'optimisation
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: null),
       appBar: AppBar(
        //leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.camera_alt_outlined),
          Icon(Icons.notifications_active_outlined)
        ],
        backgroundColor: Colors.deepOrange,
        titleTextStyle: TextStyle(fontFamily: "Cambria"),

        title: Row(
          children: [
            Image.asset("assets/images/logo.jpeg", width: 50, height: 50,),
            SizedBox(width: 10,),
            const Text(
              "HOME",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),

      body: Container(

        margin: EdgeInsets.only(left:  5, right: 10, top: 20, bottom: 30 ),
        //color: Colors.green,
        child: const Center(
          // Ajout de const pour le widget Center
          child: Text("HOME PAGE"), // Ajout de const pour le widget Text
        ),

      ),
    );
  }
}
