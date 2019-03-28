import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image swap',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String image = "assets/cat1.png";
  //its a function to return the button widget and change the image whne button is clicked
  Widget _changeButtonPressed() {
    return RaisedButton(
      child: Text("Change"),
      onPressed: () {
        setState(() {
          if (image == "assets/cat1.png") {
            image = "assets/cat2.png";
          } else {
            image = "assets/cat1.png";
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image swap'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                width: 300,
                child: Image.asset(image),
              ),
              _changeButtonPressed()
            ],
          ),
        ),
      ),
    );
  }
}
