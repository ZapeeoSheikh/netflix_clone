import 'package:flutter/material.dart';
import 'package:netflix_clone/routes/routes.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);
  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // setState(() {
        //   index = 0;
        // });
        Navigator.pushNamed(context, routes.home);
      },
      child: Container(
        height: 110,
        width: 120,
        decoration: BoxDecoration(
          color: index == 1 ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
