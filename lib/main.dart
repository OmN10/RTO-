import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rto_projects/controller/beginner.controller.dart';
import 'package:rto_projects/controller/category.controller.dart';
import 'package:rto_projects/controller/test.controller.dart';
import 'package:rto_projects/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Categorycontroller()),
        ChangeNotifierProvider(create: (_) => Testcontroller()),
        ChangeNotifierProvider(create: (_) => Beginnercontroller()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Splash(),
      ),
    );
  }
}
