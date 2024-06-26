import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserPost extends StatelessWidget {
  const UserPost({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/100?u=$name')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
            height: 300,
            child: Image.network(
              'https://picsum.photos/600/300?random=$name',
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/ic_favorite.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/icons/ic_comment.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/icons/ic_send.svg',
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ],
              ),
              const Icon(Icons.bookmark_border),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'Syami',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'Others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
              text: const TextSpan(
                  // style: TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                    text: 'kepala_Sekolah ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Ayo kita bermain bersama sama sampai ujung dunia ')
              ])),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            'View All comments',
            // style: TextStyle(color: Colors.black54),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            '17 a hours',
            // style: TextStyle(color: Colors.black54, fontSize: 10),
          ),
        )
      ],
    );
  }
}
