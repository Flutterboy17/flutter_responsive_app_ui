import 'package:flutter/material.dart';

var myDefaultbackground = Colors.grey[300];

var myAppBar= AppBar(
  backgroundColor: Colors.grey[900],
  title: Text('D A S H B O A R D'),
  centerTitle: true,
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {},
    ),
  ],
);

var myDrawer= Drawer(
  child: ListView(
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.grey[900],
        ),
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 100,
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D A S H B O A R D'),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
  
        },
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('P R O F I L E'),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
       
        },
      ),
      ListTile(
        leading: Icon(Icons.book),
        title: Text('M Y  C O U R S E S'),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer

        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('S E T T I N G S'),
        onTap: () {
          // Update the state of the app
          // ...

        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('L O G O U T'),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer

        },
      ),
    ],
  ),
);