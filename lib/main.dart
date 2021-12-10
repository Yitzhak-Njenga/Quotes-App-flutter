import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(


debugShowCheckedModeBanner: false,

  home: Home()

));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> quotes = [
    'Be Yourself; You are only Version of yourself',
    'You are a copy of the people you spend time with',
    'Show ne your friends and i will tell who you are'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome',
        ),
        centerTitle: true,
      ),

      body: Column(
        children:  quotes.map((quotes) => Text(quotes)).toList(),


      )
    );
  }
}










