import 'package:flutter/material.dart';
import 'package:ig_flutter_ui/widgets/bubble_story.dart';
import 'package:ig_flutter_ui/widgets/user_post.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List user = ['budi', 'joko', 'andi', 'atun', 'atin'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(
            'assets/icons/ic_logo.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          actions: [
            SvgPicture.asset(
              'assets/icons/ic_add.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SvgPicture.asset(
                  'assets/icons/ic_favorite.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: SvgPicture.asset(
                'assets/icons/ic_send.svg',
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BubbleStory(
                    name: user[index],
                    isMe: index == 0 ? true : false,
                    isLive: index == 1 ? true : false,
                  );
                },
                itemCount: user.length,
              ),
            ),
            const Divider(
              height: 1,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return UserPost(name: user[index]);
                },
                itemCount: user.length,
              ),
            )
          ],
        ));
  }
}
