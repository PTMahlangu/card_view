import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget{
  var services = [
    "Sofa Cleaning",
    "Carpet Cleaning",
    "Deep Cleaning",
    "Office Cleaning",
    "Window Cleaning",
    "POst Contruction",
    "Wall Painting",
    "MOve in/out cleaning"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: services.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/2)
        ),
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: Column(
              children: <Widget>[
                  SizedBox(
                     height: 20,
                  ),
                  Image.asset("images/volvo.png",height:70, width: 70,),
                 Padding(
                    padding: EdgeInsets.all(30),
                    child: Text(services[index], style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                 )
              ],
            ),
          );
        }
    );
  }

}