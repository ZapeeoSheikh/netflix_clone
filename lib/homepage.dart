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
      theme: ThemeData.dark().copyWith(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey)),
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
                                  "Movies",
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                AppText(
                                  "Categories",
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_drop_down),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Row(
                            children: [
                              Expanded(child: Container()),
                              AppText(
                                "Quickly   ",
                                size: 10,
                              ),
                              AppText(
                                "🔵",
                                size: 4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AppText(
                                "Hearfelt   ",
                                size: 10,
                              ),
                              AppText(
                                "🔵",
                                size: 4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AppText(
                                "Teen   ",
                                size: 10,
                              ),
                              AppText(
                                "🔵",
                                size: 4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AppText(
                                "Ensemble   ",
                                size: 10,
                              ),
                              AppText(
                                "🔵",
                                size: 4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AppText(
                                "Underdog   ",
                                size: 10,
                              ),
                              AppText(
                                "🔵",
                                size: 4,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AppText(
                                "TV   ",
                                size: 10,
                              ),
                              Expanded(child: Container()),
                            ],
                          ), //================== Tags
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(child: Container()),
                              Column(
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  AppText(
                                    "My List",
                                    size: 10,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Container(
                                height: 40,
                                width: 90,
                                padding: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.play_arrow_solid,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    AppText(
                                      "Play",
                                      size: 18,
                                      color: Colors.black,
                                      weight: FontWeight.bold,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  AppText(
                                    "Info",
                                    size: 10,
                                  )
                                ],
                              ),
                              Expanded(child: Container()),
                            ],
                          ),
                          SizedBox(
                            height: 10,
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
