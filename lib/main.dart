import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
       
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   
    return new Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.home),
        title: new Text('AppBar'),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert)
          )
        ],
        elevation:0.0 ,
      ),
      body: ListView(
        children: <Widget>[
           Card(
             child: Column( 
               children: <Widget>[
                 Image.network('https://asset.kompas.com/crop/0x44:1000x711/750x500/data/photo/2018/09/01/1075331157.jpg'),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Bertemu Jack Ma, Jokowi Bercanda soal Aksinya Naik Sepeda Motor'),
               ), 
             ],),
           ),
            Card(
             child: Column( 
               children: <Widget>[
                 Image.asset('images/watch.jpg'),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Developer Student Club'),
               ), 
             ],),
            ),
        ],
      ),
      );
  }
}
