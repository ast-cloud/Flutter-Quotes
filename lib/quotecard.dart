import 'package:flutter/material.dart';
import 'quote.dart';

class Quotecard extends StatelessWidget {

  Quote quotelocal;

  Quotecard(q){
    this.quotelocal=q;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Text(
              quotelocal.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(height: 6,),
            Text(
              quotelocal.author,
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),
              textAlign: TextAlign.end,
            )
          ],
        ),

      ),

    );
  }
}
