import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key, required this.profilePic, required this.userName})
      : super(key: key);
  final String profilePic;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(children: [
        CircleAvatar(
          radius: 35,
          // ignore: unnecessary_this
          backgroundImage: NetworkImage(this.profilePic),
        ),
        Text(
          // ignore: unnecessary_this
          this.userName,
          style: const TextStyle(color: Colors.white),
        ),
      ]),
    );
  }
}
