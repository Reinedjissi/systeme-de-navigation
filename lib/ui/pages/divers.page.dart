import 'package:flutter/material.dart';


class DiversPage  extends StatelessWidget {
  const DiversPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DIVERS"),),
      body: Center(
        child: Text("DIVERS page", style: Theme.of(context).textTheme.displaySmall,),
      ),
    );
  }
}
