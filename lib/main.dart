import 'package:flutter/material.dart';
import  './pages/login.dart';
import './pages/home.dart';




void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:Colors.red.shade900
      ),
      home: Login(),
    ),
  );
}

