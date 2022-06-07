import 'package:flutter/material.dart';

import 'config.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  ///get nearest [MyAppState] UP in the tree
  static MyAppState of(BuildContext context) {
    return context.findAncestorStateOfType<MyAppState>()!;
  }

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Future<void> changeCurrentColorMode(ColorMode colorMode) async {
    if (currentColorMode != colorMode) {
      setState(() {
        currentColorMode = colorMode;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
