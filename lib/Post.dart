// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Gabriela',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: 550,
            color: Colors.blue,
            child: Image.network(
              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
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
            child: const Text(
              "1,000 Likes",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                        text: 'Gabriela',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                    TextSpan(text: 'Nunca Desista dos seus sonhos')
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
