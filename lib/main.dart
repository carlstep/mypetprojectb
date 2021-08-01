import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:mypetprojectb/components/pet_card_info_section.dart';
import 'package:mypetprojectb/components/pet_card.dart';
import 'package:mypetprojectb/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyPetApp());

class MyPetApp extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    Widget petCardSection = PetCard();

    Widget petCardInfoSwipeSection = PetCardInfoSection();

    return MaterialApp(
      title: 'My Pet Project',
      home: Scaffold(
        backgroundColor: Color(0xFF9bdeac),
        appBar: AppBar(
          leading: Icon(
            Icons.settings, size: 30, color: Color(0xFF272d2d),
          ),
          leadingWidth: 70,
          title: Text('My Pet Project', style: GoogleFonts.openSans(textStyle: kPetCardPageTitle,),),
          backgroundColor: Color(0xFF6d8a96),
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



