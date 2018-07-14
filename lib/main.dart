import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  Widget widgetColumn = new Container(
    padding: const EdgeInsets.all(30.0),
    color: Colors.yellow,
      child: new Column(
        children: <Widget>[
          new Text("BasicColumn1",
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
          new Text("BasicColumn2",
            style: new TextStyle(fontSize: 18.0),
          ),
          new Text("BasicColumn3",
            style: new TextStyle(color: Colors.red),
          ),
          new Text("BasicColumn4",
            style: new TextStyle(fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
                fontSize: 18.0),
          )
        ],),
  );

  Widget widgetRow = new Container(
    padding: const EdgeInsets.all(30.0),
    color: Colors.cyan,
    child: new Row(
      children: <Widget>[
        new Expanded(child: new Icon(Icons.drive_eta, color: Colors.white,)),
        new Text("Row1")



      ],),
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "basic_layout2",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic Layout2"),
          ),
        body: new Container(
          child: new Row(
            children: <Widget>[
              new Expanded(child: widgetColumn),
              new Expanded(child: widgetRow)
            ],
          ),
        ),
        ),
      );
  }

}
