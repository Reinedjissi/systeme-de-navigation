import 'package:flutter/material.dart';


class AutresPage  extends StatelessWidget {
  const AutresPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AUTRES"),
        actions: [
          Icon(Icons.account_circle),
          Icon(Icons.output_outlined)
        ],
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text("AUTRES page", style: Theme.of(context).textTheme.displaySmall,),
      ),
    );
  }
}
