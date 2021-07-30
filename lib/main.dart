import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:mypetprojectb/utils/constants.dart';

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
                        style: kPetNameTextStyle,
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20),),
      ),
        margin: EdgeInsets.only(top: 30, bottom: 30),
        height: 350,
        width: 300,
        child: Swiper.children(
          viewportFraction: 0.7,
          scale: .8,
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.yellow,
              child: Column(
                children: [
                  Text('Dog', style: kPetCardInfoTextStyle,), // pet type
                  Text('Labrador Retriever', style: kPetCardInfoTextStyle,), // breed of pet
                  Text('January 10, 2017', style: kPetCardInfoTextStyle,), // date of birth
                  Text('Male', style: kPetCardInfoTextStyle,), // sex
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Text('Vet Contact', style: kPetCardInfoTextStyle,), // vet contact
                  Text('Groomer Contact', style: kPetCardInfoTextStyle,), // grooming contact
                  Text('Pet Supplies Store', style: kPetCardInfoTextStyle,), // pet supplies store
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Colors.lightGreen,
              child: Column(
                children: [
                  Text('Pet Description', style: kPetCardInfoTextStyle,),
                ],
              ),
            ),
          ],
        ));

    return MaterialApp(
      title: 'My Pet Project',
      theme: ThemeData(
        primaryColor: Colors.green,
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('My Pet Project'),
        ),
        body: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return ListView( // TODO - is this the best widget to use?
              children: [
                petCardSection,
                petCardInfoSwipeSection,
              ],
            );
          },
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1,
          scale: .8,
        ),
      ),
    );
  }
}
