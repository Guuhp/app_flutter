import 'package:flutter/material.dart';
import 'package:trabalho_final/Story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Instagram'),
            leading: const Icon(Icons.camera_alt_outlined),
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
          bottomNavigationBar: BottomNavigationBar(items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "",
            ),
          ]),
          body: ListView(
            children: [
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Story(
                      profilePic:
                          'https://randomuser.me/api/portraits/men/33.jpg',
                      userName: 'Lucas',
                    ),
                    Story(
                      profilePic:
                          'https://randomuser.me/api/portraits/women/49.jpg',
                      userName: 'Denise',
                    ),
                    Story(
                      profilePic:
                          'https://randomuser.me/api/portraits/men/30.jpg',
                      userName: 'Guuhp',
                    ),
                    Story(
                      profilePic:
                          'https://randomuser.me/api/portraits/women/44.jpg',
                      userName: 'Priscila',
                    ),
                    Story(
                      profilePic:
                          'https://randomuser.me/api/portraits/men/33.jpg',
                      userName: 'Guuhp',
                    ),
                    Story(
                      profilePic:
                          'https://randomuser.me/api/portraits/women/50.jpg',
                      userName: 'Luna',
                    ),
                  ],
                ),
              )
            ],
          )),
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
