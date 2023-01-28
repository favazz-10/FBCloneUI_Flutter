import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;


  Avatar(
      {required this.displayImage,
      required this.displayStatus,
      this.displayBorder = false,  this.width=50,  this.height=50});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
              border: displayBorder==true? Border.all(
                color: Colors.blueAccent,
                width:
                  3
              ):null,
              shape: BoxShape.circle),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              height: width,
              width: height,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle),
                ))
            : SizedBox()
      ]),
    );
  }
}
