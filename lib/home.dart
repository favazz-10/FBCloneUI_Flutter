import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/sections/storySection.dart';
import 'package:facebook_clone/sections/suggestionSection.dart';
import 'package:facebook_clone/widgets/circularIconButton.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'facebook',
          style: TextStyle(
              color: Colors.blue, fontSize: 27, fontWeight: FontWeight.bold),
        ),
        actions: [CircularIconButton(
            buttonIcon: Icons.search,
            buttonAction: () {
              print('Go to add screen');
            }),
          CircularIconButton(
              buttonIcon: Icons.message_outlined,
              buttonAction: () {
                print('Go to search screen');
              }),
          CircularIconButton(
              buttonIcon: Icons.menu,
              buttonAction: () {
                print('Go to messenger screen');
              }),
        ],
      ),
      body: ListView(
        children: [
          StatusSection(),
          Divider(
            thickness: 2,
            color: Colors.grey[300],
          ),
          HeaderSectionButton(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          RoomSection(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          StorySection(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          PostCard(
            avatar: 'assets/images/lm1.jpg',
            name: 'Leo Messi',
            hour: '5h',
            postTitle: 'How are you going to convince me that magic doesn\'t exist?',
            postImage: 'assets/images/lm2.jpg',
            showBlueTick: true, likeCount: '300K', shareCount: '87K', commentCount: '120K',
          ),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          PostCard(
            avatar: 'assets/images/fcb1.jpg',
            name: 'FCBarcelona',
            hour: '1 day',
            postTitle: '🏆 The Spanish Super Cup bracket. 2 more days to Gooo! \n#fcbarcelona',
            postImage: 'assets/images/fcb2.jpg',
            showBlueTick: true, likeCount: '229K', shareCount: '91K', commentCount: '121K',
          ),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          PostCard(
            avatar: 'assets/images/luminar1.jpg',
            name: 'Luminar Technolab Private Ltd',
            hour: '22min',
            postTitle: '',
            postImage: 'assets/images/Luminar2.jpg',
            showBlueTick: false, likeCount: '10K', shareCount: '1K', commentCount: '1K',
          ),
          //SuggestionSection()

        ],
      ),
    );
  }
}
