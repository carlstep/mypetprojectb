import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:mypetprojectb/utils/constants.dart';

class PetCardInfoSection extends StatelessWidget {
  const PetCardInfoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
