import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(trailing: Icon(Icons.photo_library),
      leading: Avatar(displayImage: 'assets/images/ney.jpg', displayStatus: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: 'Whats on your mind??',
            hintStyle: TextStyle(color: Colors.black54),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
