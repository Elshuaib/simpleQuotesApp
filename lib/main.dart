import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Be yourself, everyone else is already taken', author: 'Oscar Wilde'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Oscar Wilde'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Oscar Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/quote-bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Awesome Quotes App', style: TextStyle(color: Colors.amber),),
          centerTitle: true,
          backgroundColor: Colors.grey[150],
        ),
        body: Column(
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
          )).toList(),
        ),
      ),
    );
  }
}


