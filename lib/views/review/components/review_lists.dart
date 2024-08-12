import 'package:flutter/material.dart';

import 'review_tile.dart';

class ReviewLists extends StatelessWidget {
  const ReviewLists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ReviewTile(
            userName: 'Sadikh',
            starsGiven: 4,
            time: '12 Days Ago',
            isFavourite: index.isEven,
            totalLikes: 24,
            review:
                'Aliqua officia duis occaecat consectetur fugiat nostrud anim dolor commodo officia proident. Voluptate nisi reprehenderit.',
            userPicture: 'https://imgur.com/JY6sOGN.jpg',
          );
        },
        itemCount: 7,
        separatorBuilder: (context, index) => const Divider(
          thickness: 0.1,
          height: 0,
        ),
      ),
    );
  }
}
