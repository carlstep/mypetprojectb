import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:mypetprojectb/components/pet_card_info_section.dart';
import 'package:mypetprojectb/components/pet_card.dart';

void main() => runApp(MyPetApp());

class MyPetApp extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    Widget petCardSection = PetCard();

    Widget petCardInfoSwipeSection = PetCardInfoSection();

    return MaterialApp(
      title: 'My Pet Project',
      home: Scaffold(
        backgroundColor: Colors.green[100],
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



