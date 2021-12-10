import 'dart:ui';
import 'quote.dart';

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

  List<Quote> quotes = [
    Quote(author: 'Yitzhak', text: 'Be yourself'),
    Quote(author: 'Yitzhak', text: 'Your are best version of you'),
    Quote(author: 'Yitzhak', text: 'Great mind'),

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
        children:  quotes.map((quote) => Text('${quote.text}-${quote.author}')).toList(),


      )
    );
  }
}










