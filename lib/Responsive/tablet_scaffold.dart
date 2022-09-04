import 'package:flutter/material.dart';

import '../Utils/mybox.dart';
import '../Utils/mytile.dart';
import '../constant.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultbackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio:4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
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
