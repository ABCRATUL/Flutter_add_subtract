import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}
  class MyAppState extends State<MyApp> {
    int number = 0;

    void subtractnumbers() {
      setState(() {
        number -= 1;
      }
      );
    }

    void addnumbers() {
      setState(() {
        number += 1;
      });
    }
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // return MaterialApp(home:Scaffold(appBar: new AppBar(title:new Text("Calculation")),),);
      return MaterialApp(home:Scaffold(appBar: new AppBar(title: new Text("Calculation"),),
      body: new Center(child: new Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[new Text('$number',style: new TextStyle(fontWeight:FontWeight.bold,fontSize:160,fontFamily: 'Roboto',),),new Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: <Widget>[new RaisedButton(padding: const EdgeInsets.all(8.0),textColor: Colors.white,color:Colors.blue,onPressed: addnumbers,child: new Text("Add"),),new RaisedButton(onPressed: subtractnumbers,textColor: Colors.white,color: Colors.red,padding: const EdgeInsets.all(8.0),child: new Text ("Subtract"),),],)],),),
      ));

  }
  }