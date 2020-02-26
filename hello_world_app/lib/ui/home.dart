import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  _tapButton() {
    debugPrint("Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Scaffold"),
            centerTitle: true,
            backgroundColor: Colors.amberAccent.shade400,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.email),
                  onPressed: () => debugPrint("Email Tapped!")),
              IconButton(icon: Icon(Icons.access_alarms), onPressed: _tapButton)
            ]
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreenAccent,
          hoverColor: Colors.deepOrange,
          child: Icon(Icons.call_missed),
          onPressed: () => debugPrint("You Missed a Call!"),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("First")),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("Second"))
        ], onTap: (int index) => debugPrint("Tapped item: $index"),),
        backgroundColor: Colors.blueAccent.shade400,
        body: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomButton()

//              InkWell(
//                child: FloatingActionButton(
//                  child: Text("Hello World!"),
//                  backgroundColor: Colors.amberAccent,
//                  //foregroundColor: Colors.amberAccent,
//                  hoverColor: Colors.blueAccent,
//                  onPressed: () => debugPrint("Gabrielle Clicked Me!!!!!"),
//                ))
                ])));
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("Hello World Again!"),
        );

        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text("Button"),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      child: Center(
          child: Text("Hello World!",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic))),
    );
  }
}
