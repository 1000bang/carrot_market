import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chatting/chat_screen.dart';
import 'home/home_screen.dart';
import 'my_carrot/carrot_screen.dart';
import 'near_me/near_me_screen.dart';
import 'neigborhodd_life/neigborhood_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeigborhoodScreen(),
          NearMeScreen(),
          MyCarrotScreen(),
          ChatScreen(),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), label: "홈"),

          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.streetView), label: "동네생활"),

          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.compass), label: "내 근처"),

          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.comments), label: "채팅"),

          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.faceAngry), label: "나의 당근"),
        ],
      ),

    );
  }
}
