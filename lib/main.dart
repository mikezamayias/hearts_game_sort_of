import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Hearts Game');
    setWindowMinSize(const Size(500, 1000));
    setWindowMaxSize(const Size(500, 1000));
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
