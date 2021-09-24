import 'package:flutter/material.dart';

import 'home.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
      },
    );
  }
}
