import 'package:flutter/material.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';

import 'mountains.dart';

void main(){
  runApp(MaterialApp(
    home: Rivers(),
  ));
}
class Rivers extends StatefulWidget {
  @override
  _RiversState createState() => _RiversState();
}

class _RiversState extends State<Rivers> {
  PageController _controller =
  PageController(initialPage: 0, viewportFraction: 0.85);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppTheme.dark_grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Top 10 Rivers", style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.2,
        ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.cyan,
                    Colors.indigo
                  ])
          ),
        ),
      ),
      body: PageView(
        controller: _controller,
        children: [
          mtn_card(context,  Colors.teal,"1.Nile",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Fnile.jpg?alt=media&token=55e998bd-f924-46b4-9dae-1cae4bc6fb21",

            fit: BoxFit.fill,
          ),
              "Countries: \n\nEthiopia, Eritrea, Sudan, Uganda, Tanzania, Kenya, Rwanda, Burundi, Egypt, Democratic Republic of the Congo, South Sudan"
                  "\n\nLength: 6,650km"),
          mtn_card(context, Colors.green, "2.Amazon",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Famazon.jpg?alt=media&token=5db64666-5079-4be8-961c-2f789c87d000",
            fit: BoxFit.fill,
          ),
              "Countries: \n\nBrazil, Peru, Bolivia, Colombia, Ecuador, Venezuela, Guyana"
                  "\n\nLength: 6,575km"
          ),
          mtn_card(context, Colors.indigo, "3.Yangtze",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Fyangtze.jpg?alt=media&token=bbcf2e70-f923-4459-9e0f-456d424f5754",
                fit: BoxFit.fill,
              ),
              "Countries: \n\nChina"
                  "\n\nLength: 6,300km"
          ),
          mtn_card(context, Colors.blue, "4.Mississippi–Missouri–Jefferson",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Fmississippi.jpg?alt=media&token=37488ae3-f546-4558-8a13-4f2a041fa1bf",
                fit: BoxFit.fill,
              ),
              "Countries: \n\nUnited States (98.5%), Canada (1.5%)"
                  "\n\nLength: 6,275km"
          ),
          mtn_card(context,  Colors.brown,"5.Yenisei–Angara–Selenge–Ider",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Fyenisei.jpg?alt=media&token=cfd646f3-9262-4037-a32b-06dd0d03a9c6",
                fit: BoxFit.fill,
              ),
              "Countries: \n\nRussia (97%), Mongolia (2.9%)"
                  "\n\nLength: 5,539km"
          ),
          mtn_card(context, Colors.amber[700], "6.Yellow River",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Fyellow.jpg?alt=media&token=15691ae2-8b4b-4891-ada8-84da5befa195",
                fit: BoxFit.fill,
              ),
              "Countries: \n\nChina"
                  "\n\nLength: 5,464km"
          ),
          mtn_card(context, Colors.deepPurple, "7.Ob–Irtysh",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Fob_irtysh.jpg?alt=media&token=4ae8a911-73cd-4046-88a4-09939bfbbbcc",
                fit: BoxFit.fill,
              ),
              "Countries: \n\nRussia, Kazakhstan, China, Mongolia"
                  "\n\nLength: 5,410km"
          ),
          mtn_card(context, Colors.pink, "8.Río de la Plata–Paraná–Rio Grande",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Fparana.jpg?alt=media&token=a03df144-5e80-43e3-869d-1dee27c5fd99",
                fit: BoxFit.fill,
              ),
              "Countries: \n\nBrazil (46.7%), Argentina (27.7%), Paraguay (13.5%), Bolivia (8.3%), Uruguay (3.8%)"
                  "\n\nLength: 4,880km"
          ),
          mtn_card(context, Colors.grey, "9.Congo–Chambeshi",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Fcongo_river.jpg?alt=media&token=2d1ce1f8-ef92-4fff-bedb-1f0a9120674c",
                fit: BoxFit.fill,
              ),
              "Countries: \n\nDemocratic Republic of the Congo, Central African Republic, Angola, Republic of the Congo, Tanzania, Cameroon, Zambia, Burundi, Rwanda"
                  "\n\nLength: 4,700km"
          ),
          mtn_card(context,  Colors.deepOrange,"10.Amur–Argun–Kherlen",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/rivers%2Famur.JPG?alt=media&token=1f01333b-add5-40a1-9e8b-cb7d1f6df676",
                fit: BoxFit.fill,
              ),
              "Countries: \n\nRussia, China, Mongolia"
                  "\n\nLength: 4,444km"
          ),

        ],
      ),
    );
  }
}
