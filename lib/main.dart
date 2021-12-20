import 'dart:ui';
import 'quote.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(




debugShowCheckedModeBanner: false,

  home: Home()

));

List<Quote> quotes = [
  Quote(author: 'Dolly Parton', text: 'The way i see it, if you the rainbow,you gotta put up the rain'),
  Quote(author: 'Les Brown', text: 'Life has limitations except the ones you make'),
  Quote(author: 'Maya defeated', text: 'You will face many defeats in life,but never let yourself defeated'),

];



Widget quoteTemplate(quotes) {
  return
    Column(
        children: List.generate(quotes.length,(i) =>

               Card(
                  margin: EdgeInsets.all(20.0),
                  child:
                  Container(

                      color: Colors.redAccent, child:
                  Text(quotes[i].text)
                  ))

        )
    );
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



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

      body: quoteTemplate( quotes)

      )
    ;
  }
}










