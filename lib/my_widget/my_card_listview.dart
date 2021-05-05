import 'package:flutter/material.dart';

Widget my_card_listview(BuildContext context ,Color color, String text) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.0),
      side: BorderSide(color: Colors.white70, width: 1),
    ),
    elevation: 5,
    margin: EdgeInsets.all(10),
    color: color,

    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Text(
            text,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}