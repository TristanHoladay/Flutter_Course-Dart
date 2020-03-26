import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;

  List quotes = [
    "You are never too old to set another goal or to dream a new dream.",
    "I believe in Christianity as I believe that the sun has risen: not only because I see it, but because by it I see everything else.",
    "Since it is so likely that children will meet cruel enemies, let them at least have heard of brave knights and heroic courage.",
    "No one ever told me that grief felt so like fear.",
    "I sometimes wonder if all pleasures are not substitutes for joy.",
    "To love at all is to be vulnerable.",
    "A pleasure is not full grown until it is remembered.",
    "The terrible thing, the almost impossible thing, is to hand over your whole self — all your wishes and precautions — to Christ.",
    "No man knows how bad he is till he has tried very hard to be good.",
    "Isn’t it funny how day by day nothing changes, but when you look back, everything is different ...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrangeAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.5),
                    ),
                    child: Center(child: Text(quotes[_index % quotes.length],
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 16.5
                    )))),
              ),
            ),

            Divider(thickness: 1.3),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.greenAccent.shade700,
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Inspire me!",
                    style: TextStyle(fontSize: 18.8, color: Colors.white))),
            ),
            Image.asset('assets/images/cs_lewis.jpg',
            width: 150,),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    //increment index counter
    setState(() {
      _index++;
    });
  }
}
