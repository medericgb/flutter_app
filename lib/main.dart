import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  QuotesList({Key key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
      author: 'Jean',
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    ),
    Quote(
      author: 'Jack',
      text:
          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    ),
    Quote(
      author: 'Marion',
      text:
          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    ),
    Quote(
      author: 'Kareem',
      text:
          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ),
  ];

  List<String> authors = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe5e5e5),
      appBar: AppBar(
        title: Text('Quotes'),
        backgroundColor: Color(0xFF14213d),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: quotes
              .map(
                (quote) => Text(
                  '${quote.text} - écrit par ${quote.author}',
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
