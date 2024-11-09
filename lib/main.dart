import 'package:flutter/material.dart';
import 'package:music_app/pages/pages.dart';
import 'package:music_app/screens/counter_screen.dart';
import 'package:music_app/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        home: Scaffold(
          body: Pages2(),
        ),
      ),
    );
  }
}
