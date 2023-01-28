import 'package:flutter/material.dart';

class HeaderSectionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: () {
                print('Live button clicked');
              },
              icon: Icon(
                Icons.video_call,
                color: Colors.deepOrange,
              ),
              label: Text(
                'Live',
                style: TextStyle(color: Colors.black),
              ),
            ),
            VerticalDivider(
              thickness: 2,
              color: Colors.grey[300],
            ),
            TextButton.icon(
              onPressed: () {
                print('Photo button clicked');
              },
              icon: Icon(
                Icons.photo_library_rounded,
                color: Colors.green,
              ),
              label: Text(
                'Photo',
                style: TextStyle(color: Colors.black),
              ),
            ),
            VerticalDivider(
              thickness: 2,
              color: Colors.grey[300],
            ),
            TextButton.icon(
              onPressed: () {
                print('Room button clicked');
              },
              icon: Icon(
                Icons.slow_motion_video_sharp,
                color: Colors.purple,
              ),
              label: Text(
                'Room',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ));
  }
}
