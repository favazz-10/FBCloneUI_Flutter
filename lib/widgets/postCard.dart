import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

import '../sections/footerButtonSection.dart';
import 'blueTick.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String hour;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.hour,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          postCardTitle(),
          postCardImage(),
          postCardFooter(),
          Divider(color: Colors.grey[300],thickness: 2,),
          FooterSectionButton()
        ],
      ),
    );
  }

  //PostCard header section
  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 7,
          ),
          showBlueTick == true ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(hour == null ? '' : hour),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            size: 17,
            color: Colors.grey[700],
          )
        ],
      ),
      trailing: Icon(
        Icons.more_horiz,
        color: Colors.grey[700],
      ),
    );
  }

  //Postcard image section
  Widget postCardImage() {
    return Container(
      padding: EdgeInsets.only(top: 4, bottom: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Image.asset(postImage),
    );
  }

//Postcard title section
  Widget postCardTitle() {
    return postTitle!=null && postTitle!=''?Container(
      padding: EdgeInsets.only(bottom: 5,left: 25,right: 10),
      child: Text(
        postTitle == null ? '' : postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    ):SizedBox();
  }

  //Postcard footer section
  Widget postCardFooter() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 10,
                    )),
                SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: 'Comments'),
                SizedBox(
                  width: 7,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: 'Shares'),
                SizedBox(width: 3),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  height: 22,
                  width: 22,
                ),
                IconButton(
                    onPressed: () {
                      print('Iconbutton pressed!!');
                    },
                    icon: Icon(Icons.arrow_drop_down,color: Colors.grey[700],))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? '' : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }
}
