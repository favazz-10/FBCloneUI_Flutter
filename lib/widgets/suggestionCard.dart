import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [suggestionImage(),
          suggestionDetails()
        ],
      ),
    );
  }

  //suggestion image
  Widget suggestionImage() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: Image.asset(
            'assets/images/dulquer.jpg',
            height: 250,
            fit: BoxFit.cover,
          ),
        ));
  }

  //suggestion details
  Widget suggestionDetails() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 140,
          color: Colors.grey[200],
          child: Column(
            children: [
              ListTile(
                title: Text('MO Favaz'),
                subtitle: Text('4 Mutual friends'),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                        buttonAction: () {},
                        buttonIcon: Icons.account_circle_rounded,
                        buttonColor: Colors.blue,
                        buttonTextColor: Colors.white,
                        buttonIconColor: Colors.white,
                        buttonText: 'Add Friend'),
                    blankButton(
                        buttonAction: () {},
                        buttonText: 'Remove',
                        buttonColor: Colors.grey[300]!,
                        buttonTextColor: Colors.black)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget blankButton(
      {required void Function() buttonAction,
      required String buttonText,
      required Color buttonColor,
      required Color buttonTextColor}) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.black),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17))),
        onPressed: buttonAction,
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor),
        ));
  }

  Widget iconButton(
      {required void Function() buttonAction,
      required IconData buttonIcon,
      required Color buttonColor,
      required Color buttonTextColor,
      required Color buttonIconColor,
      required String buttonText}) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }
}
