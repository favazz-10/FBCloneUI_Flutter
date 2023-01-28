import 'package:flutter/material.dart';

class FooterSectionButton extends StatelessWidget {

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
                Icons.thumb_up_alt_outlined,
                color: Colors.grey[700],
              ),
              label: Text(
                'Like',
                style: TextStyle(color: Colors.grey[800]),
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
                Icons.comment_outlined,
                color: Colors.grey[700],
              ),
              label: Text(
                'Comment',
                style: TextStyle(color: Colors.grey[800]),
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
                Icons.share,
                color: Colors.grey[700],
              ),
              label: Text(
                'Share',
                style: TextStyle(color: Colors.grey[800]),
              ),
            ),
          ],
        ));
  }
}
