import 'package:flutter/material.dart';
import 'package:my_flutter_app/WalkthroughScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalkthroughScreen(),
    );
  }
}