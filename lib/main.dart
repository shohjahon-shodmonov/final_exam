import 'package:final_exam/core/init/splash_screen.dart';
import 'package:final_exam/core/routes/routes.dart';
import 'package:final_exam/screens/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.instance.onGenerateRoute,
      initialRoute: '/',
    );
  }
}