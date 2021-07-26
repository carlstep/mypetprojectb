import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:card_swiper/card_swiper.dart';

void main() => runApp(MyPetApp());

class MyPetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget petCardSection = Container(
      //color: Colors.grey,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 250,
                width: 280,
                //margin: EdgeInsets.only(left: 30),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'images/dog-img.jpg',
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.red, width: 5.0),
                  ),
                ),
              ),
              Positioned(
                width: 280,
                bottom: 0,
                left: 0,
                child: Card(
                  color: Colors.yellow[500],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Pet Name Goes Here',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.red, width: 2.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    Widget petCardInfoSwipeSection = Container(
        margin: EdgeInsets.only(top: 30, bottom: 30),
        height: 350,
        width: 300,
        child: Swiper.children(
          viewportFraction: 0.8,
          scale: 0.9,
          autoplay: false,
          pagination: SwiperPagination(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
              builder: DotSwiperPaginationBuilder(
                  color: Colors.grey[500],
                  activeColor: Colors.grey[800],
                  size: 15.0,
                  activeSize: 20.0)),
          children: <Widget>[
            Card(
              color: Colors.yellow,
              child: Column(
                children: [
                  Text('Dog'), // pet type
                  Text('Labrador Retriever'), // breed of pet
                  Text('January 10, 2017'), // date of birth
                  Text('Male'), // sex
                ],
              ),
            ),
            Card(
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Text('Vet Contact'), // vet contact
                  Text('Groomer Contact'), // grooming contact
                  Text('Pet Supplies Store'), // pet supplies store
                ],
              ),
            ),
            Card(
              color: Colors.lightGreen,
              child: Column(
                children: [
                  Text('Pet Description'), // vet contact
                ],
              ),
            ),
          ],
        ));

    return MaterialApp(
      title: 'My Pet Project',
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text('My Pet Project'),
        ),
        body: Swiper(
          itemBuilder: (BuildContext context, int index) {
            child:
            return ListView(
              children: [
                petCardSection,
                petCardInfoSwipeSection,
              ],
            );
          },
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          viewportFraction: 0.9,
          scale: 0.9,
        ),
      ),
    );
  }
}
