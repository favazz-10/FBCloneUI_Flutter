import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0,right: 4),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.blue.shade100,width: 2)),
              onPressed: () {
                print('create room button pressed!');
              },
              icon: Icon(
                Icons.slow_motion_video_sharp,
                color: Colors.purple,
              ),
              label: Text(
                'Create \nRoom',
                style: TextStyle(color: Colors.blue[400]),
              ),
            ),
          ),
          Avatar(displayImage: 'assets/images/dulquer.jpg', displayStatus: true,),
          Avatar(displayImage: 'assets/images/cr.jpg', displayStatus: true,),
          Avatar(displayImage: 'assets/images/dlp.jpg', displayStatus: true,),
          Avatar(displayImage: 'assets/images/ini.jpg', displayStatus: true,),
          Avatar(displayImage: 'assets/images/pique.jpg', displayStatus: true,),
          Avatar(displayImage: 'assets/images/raj.jpg', displayStatus: true,),
          Avatar(displayImage: 'assets/images/dq1.jpg', displayStatus: true,),

        ],
      ),
    );
  }
}

