import 'package:facebook_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to Story',
            story: 'assets/images/ney.jpg',
            avatar: '',
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: 'ESPN FC',
            story: 'assets/images/espn2.jpg',
            avatar: 'assets/images/espn1.png',
          ),
          StoryCard(
            labelText: 'LaLiga',
            story: 'assets/images/laliga2.jpg',
            avatar: 'assets/images/laliga1.jpg',
          ),
          StoryCard(
            labelText: 'Mrwhosetheboss',
            story: 'assets/images/mrwho2.jpg',
            avatar: 'assets/images/mrwho1.jpg',
          ),
          StoryCard(
            labelText: 'Dulquer Salmaan',
            story: 'assets/images/dq1.jpg',
            avatar: 'assets/images/dulquer.jpg',
          ),
          StoryCard(
            labelText: 'Unbox Therapy',
            story: 'assets/images/ubt3.jpg',
            avatar: 'assets/images/ubt1.jpg',
          ),
        ],
      ),
    );
  }
}
