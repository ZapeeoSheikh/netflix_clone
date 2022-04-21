import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom/AppText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          // onTap: (){
          //
          // },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          unselectedFontSize: 0,
          backgroundColor: Colors.black,
          showSelectedLabels: false,

          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.game_controller,
                  color: Colors.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library_outlined,
                  color: Colors.white,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.arrow_down_circle,
                  color: Colors.white,
                ),
                label: "Home"),
          ],
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/bbg.jpeg"),
                          fit: BoxFit.cover)),
                  child: Container(
                    color: Colors.black
                        .withOpacity(0.4), //======= Color Blur Layer
                    child: Container(
                      // Onto the Image items
                      margin: EdgeInsets.only(left: 15, right: 15, top: 60),
                      child: Column(
                        children: [
                          Row(
                            // Top Layer of items
                            children: [
                              Container(
                                height: 60,
                                width: 50,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  image: DecorationImage(
                                      image: AssetImage("img/small.png"),
                                      fit: BoxFit.cover),
                                ),
                              ), //================ Netflix logo
                              Expanded(child: Container()),
                              Icon(
                                Icons.search,
                                size: 30,
                              ), //============== Search
                              SizedBox(
                                width: 25,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)),
                              ), //============Avatar
                            ],
                          ), // ================= Row 1st
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                AppText(
                                  "TV Shows",
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                AppText(
                                  "Movie",
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                AppText(
                                  "Categories",
                                ),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
