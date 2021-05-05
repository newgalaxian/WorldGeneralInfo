import 'package:flutter/material.dart';

Widget ocean_name(BuildContext context ,Color color, String title,String details,FadeInImage image) {
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
      child: Column(
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
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child:
            //AssetImage("assets/images/world_map.png"
            //NetworkImage("https://cdn.pixabay.com/photo/2020/10/18/11/01/deer-5664425_960_720.jpg"),
              //fit: BoxFit.fill,
              image,
            ),
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

        ],
      ),
    ),
  );
}