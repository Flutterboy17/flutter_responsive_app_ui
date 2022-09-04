import 'package:flutter/material.dart';
import 'package:mitch_koko/Utils/mytile.dart';
import 'package:mitch_koko/constant.dart';

import '../Utils/mybox.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultbackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) {
                  return MyBox();
                },
              ),
            ),
          ),
          Expanded(child: 
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
            return MyTile();
          },))
        ],
      ),
    );
  }
}
