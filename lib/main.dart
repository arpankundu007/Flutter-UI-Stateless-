import 'package:flutter/material.dart';

void main() =>
    runApp(new MaterialApp(
      home: new MyStatelessWidget(),
    ));

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
          child: new ListView(
            children: <Widget>[
              new Image.asset(
                  'images/lake.jpeg', height: 240.0, fit: BoxFit.cover),
              new ImageTitle(),
              new Contacts(),
              new Container(
                margin: new EdgeInsets.all(32.0),
                  child: new Text("Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.")
              )
              
            ],
          ),
        )
    );
  }
}

class ImageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [


          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),


          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),


          new Text('41'),


        ],
      ),
    );
  }
}

class Contacts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
              new ContactItem(icon: new Icon(Icons.call, color: Colors.blue,), title: new Text("Contact")),
              new ContactItem(icon: new Icon(Icons.navigation, color: Colors.blue,), title: new Text("Navigate"),),
              new ContactItem(icon: new Icon(Icons.share, color: Colors.blue), title: new Text("Share"),),
        ],
      ),
    );
  }

}

class ContactItem extends StatelessWidget{
  
  ContactItem({this.icon, this.title});

  final Widget icon;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Column(

        children: <Widget>[
          this.icon, this.title
        ],
      ),
    );
  }
}
