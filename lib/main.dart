import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad2/shplesh_screen.dart';

void main(){
  runApp(Myapps());
}
class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Spleshscreen(),
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            //backgroundColor: Colors.green,
            padding:EdgeInsets.symmetric(vertical: 10),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
        primaryColor: Colors.green,
        primarySwatch: Colors.green
      ),
    );
  }
}
