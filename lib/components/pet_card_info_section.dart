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
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        margin: EdgeInsets.only(top: 30, bottom: 30),
        height: 300,
        width: 300,
        child: Swiper.children(
          viewportFraction: 0.8,
          scale: .9,
          autoplay: false,
          pagination: SwiperPagination(
            //alignment: Alignment.bottomCenter,
            //margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            builder: DotSwiperPaginationBuilder(
                color: Color(0xFF6d8a96),
                activeColor: Color(0xFF66cc80),
                size: 15.0,
                activeSize: 20.0),
          ),
          children: <Widget>[
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'GENERAL',
                      style: kPetCardInfoTextStyleHeader,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Dog',
                        style: kPetCardInfoTextStyle,
                      ),
                    ), // pet type
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Labrador Retriever',
                        style: kPetCardInfoTextStyle,
                      ),
                    ), // breed of pet
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'January 10, 2017',
                        style: kPetCardInfoTextStyle,
                      ),
                    ), // date of birth
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Male',
                        style: kPetCardInfoTextStyle,
                      ),
                    ), // sex
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5.0,
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'CONTACTS',
                      style: kPetCardInfoTextStyleHeader,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Vet Contact',
                        style: kPetCardInfoTextStyle,
                      ),
                    ), // vet contact
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Groomer Contact',
                        style: kPetCardInfoTextStyle,
                      ),
                    ), // grooming contact
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Pet Insurance',
                        style: kPetCardInfoTextStyle,
                      ),
                    ), // pet supplies store
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5.0,
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'DESCRIPTION',
                      style: kPetCardInfoTextStyleHeader,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Bella is a beautiful dog, she is calm but can sometimes be a bit silly, in a nice way. gold colour, medium long hair. Happy to meet people, comfortable around most dogs, but is shy and nervous around small, yappy dogs. Good on the lead and very well behaved off the lead.',
                        style: kPetCardInfoTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
