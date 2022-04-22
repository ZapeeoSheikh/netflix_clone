import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/nav%20pages/Download.dart';
import 'package:netflix_clone/nav%20pages/Game.dart';
import 'package:netflix_clone/nav%20pages/News.dart';

import 'nav pages/Home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  List pages = [
    HomePage(),
    GamePage(),
    Newspage(),
    DownloadPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        canvasColor: Colors.black54,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey),
      ),
      home: Scaffold(
        body: pages[currentindex],
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          ),
          elevation: 0,
          currentIndex: currentindex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  // color: Colors.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.game_controller,
                  // color: Colors.white,
                ),
                label: "Games"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library_outlined,
                  // color: Colors.white,
                ),
                label: "News & Hot"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.arrow_down_circle,
                  // color: Colors.white,
                ),
                label: "Download"),
          ],
        ),
      ),
    );
  }
}
