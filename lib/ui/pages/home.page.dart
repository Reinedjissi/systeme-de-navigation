import 'package:flutter/material.dart';

import '../widgets/drawer.widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("HOME",style: TextStyle(
          color: Colors.deepOrange,

          fontSize:  20 ),
      ),
      ),

      body: Center(
        child: Text("HOME PAGE"),
      ),

    );

  }
}
