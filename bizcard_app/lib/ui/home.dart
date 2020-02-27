//import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard", textAlign: TextAlign.center),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.airline_seat_flat_angled,
            color: Colors.deepPurpleAccent,
            size: 30.0,)
        ],

      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar()
          ],
        )
      )
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Tristan Holaday",
          style: TextStyle(fontSize: 20.9,
          color: Colors.white,
          fontWeight: FontWeight.w500)),
          Text("Build Apps with Tristan", style: TextStyle(fontSize: 20.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("T: @buildappswithme", style: TextStyle(fontSize: 18.0),)
            ],
          )
        ],
      ),
    );
  }

 Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.red, width: 1.2),
        image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"),
        fit: BoxFit.cover)
      ),
    );
 }
}

