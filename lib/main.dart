import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}


class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [Quote('The purpose of our lives is to be happy.','- Dalai Lama'),
    Quote('Live for each second without hesitation.','- Elton John'),
    Quote('Don’t limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you. What you believe, remember, you can achieve','- Mary Kay Ash'),
    Quote('You must expect great things of yourself before you can do them.','- Michael Jordan'),
    Quote('Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.','- Buddha')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((qt){return Quotecard(qt);}).toList(),
      ),
    );
  }
}


