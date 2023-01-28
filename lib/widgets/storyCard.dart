import 'package:facebook_clone/widgets/circularIconButton.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.createStoryStatus = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover)),
      child: Stack(children: [
        Positioned(
            left: 3,
            top: 3,
            child: createStoryStatus == true
                ? CircularIconButton(
                    iconColor: Colors.blue,
                    buttonIcon: Icons.add,
                    buttonAction: () {
                      print('add button pressed!!');
                    },
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBorder: true,
              width: 35,height: 35,
                  )),
        Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : 'N/A',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ))
      ]),
    );
  }
}
