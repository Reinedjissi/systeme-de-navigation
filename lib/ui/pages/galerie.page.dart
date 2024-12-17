import 'package:flutter/material.dart';


class GaleriePage  extends StatelessWidget {
  const GaleriePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GALERIE"),),
      body: Center(
        child: Text("GALERIE page", style: Theme.of(context).textTheme.displaySmall,),
      ),
    );
  }
}
