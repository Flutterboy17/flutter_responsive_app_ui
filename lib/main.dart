import 'package:flutter/material.dart';
import 'package:mitch_koko/Responsive/responsive.dart';

import 'Responsive/desktop_scaffold.dart';
import 'Responsive/mobile_scaffold.dart';
import 'Responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      )
    );
  }
}

