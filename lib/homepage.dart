import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(),
                Expanded(child: Container()),
                Icon(Icons.search),
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
