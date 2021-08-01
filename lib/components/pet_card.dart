import 'package:flutter/material.dart';
import 'package:mypetprojectb/utils/constants.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
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
                  child: Image.asset( // user to select image
                    'images/dog-img.jpg',
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.yellow, width: 5.0),
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
                      child: Text( // user to enter text
                        'Pet Name Goes Here',
                        style: kPetNameTextStyle,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                    //side: BorderSide(color: Colors.grey, width: 5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}