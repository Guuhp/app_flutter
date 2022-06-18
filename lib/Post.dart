// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
    required this.picturePerfil,
    required this.namePost,
    required this.caption,
    required this.pictureUrl,
    required this.likes,
    required this.username,
  }) : super(key: key);
  final String picturePerfil;
  final String namePost;
  final String caption;
  final String pictureUrl;
  final String likes;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(this.picturePerfil),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  this.namePost,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: 550,
            color: Colors.blue,
            child: Image.network(
              this.pictureUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(Icons.favorite_border_outlined, color: Colors.white),
                const SizedBox(width: 15),
                const Icon(
                  Icons.messenger_outline,
                  color: Colors.white,
                ),
                const SizedBox(width: 15),
                const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                ),
                Expanded(
                  child: Container(),
                ),
                const Icon(
                  Icons.bookmark_border_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '${this.likes} likes',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.white), children: [
                TextSpan(
                    text: this.username,
                    style: TextStyle(fontWeight: FontWeight.w700)),
                TextSpan(text: ' ${this.caption} '),
              ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              'view all <comments',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              '2 hours ago',
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
