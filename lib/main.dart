import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyPetApp());

class MyPetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget petCardSection = Container(
      color: Colors.grey,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 135,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/dog-img.jpg'),
                  radius: 130,
                ),
              ),
            ),
            Positioned(
              top: -20,
              right: 20,
              child: Card(
                color: Colors.yellow[500],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Pet Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -15,
              right: 20,
              child: Card(
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    FontAwesomeIcons.dog,
                    size: 50,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return MaterialApp(
      title: 'My Pet Project',
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text('My Pet Project'),
        ),
        body: ListView(
          children: [
            petCardSection,
          ],
        ),
      ),
    );
  }
}
