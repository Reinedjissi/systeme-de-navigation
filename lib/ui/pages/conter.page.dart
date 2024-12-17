import 'package:flutter/material.dart';

class ConterPage extends StatefulWidget {


  @override
  State<ConterPage> createState() => _ConterPageState();
}

class _ConterPageState extends State<ConterPage> {
  int conter = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("conter"),),
      body: Center(
        child: Text("conter Value ${conter}",
        style: TextStyle(fontSize: 22,color: Colors.deepOrange),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                --conter;
              });
              print(conter);
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 8,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                ++conter;
              });
              print(conter);
            },
            child: Icon(Icons.add),
          ),
        ],
      )
    );
  }
}
