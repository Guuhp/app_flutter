import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:trabalho_final/Post.dart';
import 'package:trabalho_final/Story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Instagram',
            style: TextStyle(fontFamily: 'GrandHotel', fontSize: 30),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.send_outlined),
              onPressed: () {},
            ),
          ],
        ),
        /* floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, size: 40),
        ), */
        body: ListView(
          children: [
            SizedBox(
              height: 95,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Story(
                    profilePic:
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    userName: 'Gabriela',
                  ),
                  Story(
                    profilePic:
                        'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    userName: 'Leandro',
                  ),
                  Story(
                    profilePic:
                        'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
                    userName: 'Lucas',
                  ),
                  Story(
                    profilePic:
                        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    userName: 'Matheus',
                  ),
                  Story(
                    profilePic:
                        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    userName: 'Priscila',
                  ),
                  Story(
                    profilePic:
                        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    userName: 'Luna',
                  ),
                  Story(
                    profilePic:
                        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    userName: 'Luna',
                  ),
                  Story(
                    profilePic:
                        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    userName: 'Luna',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 510,
              child: Container(
                /*  color: Colors.amber, */
                child: ListView(
                  children: [Post(), Post(), Post()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = "https://randomuser.me/api/portraits/men/63.jpg";
    // return Image.network(url);
    return CircleAvatar(
      backgroundImage: NetworkImage(url),
    );
  }
}
