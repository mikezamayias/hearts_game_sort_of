import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Assignment 3');
    setWindowMinSize(Size.infinite);
    setWindowMaxSize(Size.infinite);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
