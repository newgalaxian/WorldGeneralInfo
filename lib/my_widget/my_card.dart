import 'package:flutter/material.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';

Widget my_card(BuildContext context,IconButton icon ,Color color, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.cyan, Colors.indigo]),
          //color: MyAppTheme.background,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topRight: Radius.circular(68.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: MyAppTheme.grey.withOpacity(0.2),
                offset: Offset(1.1, 1.1),
                blurRadius: 10.0),
          ],
        ),
      margin: EdgeInsets.all(10.0),
     // color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: icon,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                text,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),

            ),
          ),

        ],
      )
    ),
  );
}
Widget my_card_color_image(
    BuildContext contex, String title,Color color, FadeInImage image, String details) {
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
        child:Column(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3),
              ),
            ),
            Expanded(
                flex: 4,
                child: image),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 6,
              child: ListView(
                children: [
                  Text(
                    details,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Source : Wikipedia",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        )
    ),
  );
}
