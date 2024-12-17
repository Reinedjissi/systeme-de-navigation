import 'package:flutter/material.dart';


class AutresPage  extends StatelessWidget {
  const AutresPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AUTRES"),),
      body: Center(
        child: Text("AUTRES page", style: Theme.of(context).textTheme.displaySmall,),
      ),
    );
  }
}
