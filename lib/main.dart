import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexa2/views/Home.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                systemOverlayStyle:
                    SystemUiOverlayStyle(statusBarColor: HexColor("#EAE9E5")),
                titleTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                backgroundColor: HexColor("#EAE9E5")),
            scaffoldBackgroundColor: HexColor("#EAE9E5")),
        debugShowCheckedModeBanner: false,
        title: 'HEXA2',
        home: Home());
  }
}
