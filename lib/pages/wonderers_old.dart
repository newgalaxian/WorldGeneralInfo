import 'package:flutter/material.dart';
import 'package:world_general_info/my_widget/my_card.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';

void main(){
  runApp(MaterialApp(
    home: AncientWonderers(),
  ));
}
class AncientWonderers extends StatefulWidget {
  @override
  _AncientWonderersState createState() => _AncientWonderersState();
}

class _AncientWonderersState extends State<AncientWonderers> {
  PageController _controller =
  PageController(initialPage: 0, viewportFraction: 0.85);
  String oceanDetails;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  final  TextStyle optionStyle =TextStyle(
    fontSize: 14.0,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppTheme.dark_grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ancient Wonders", style: TextStyle(
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
          my_card_color_image(
            context,
            '1.Great Pyramid of Giza, El Giza, Egypt ',
            Colors.teal,
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fgiza.jpg?alt=media&token=e363ee40-2a86-423e-a834-ab6f2bcc6533",
              fit: BoxFit.fill,
            ),
            "The Great Pyramid of Giza (also known as the Pyramid of Khufu or the Pyramid of Cheops) is the oldest and largest of the three pyramids in the Giza pyramid complex bordering present-day Giza in Greater Cairo, Egypt. It is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact.",

          ),
          my_card_color_image(
            context,
            '2.Colossus of Rhodes',
            Colors.redAccent,
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fcolossus.jpg?alt=media&token=6fffe638-159f-40b5-b307-cb26a540c8ea",
              fit: BoxFit.fill,
            ),
            "The Colossus of Rhodes  was a statue of the Greek sun-god Helios, erected in the city of Rhodes, on the Greek island of the same name, by Chares of Lindos in 280 BC. One of the Seven Wonders of the Ancient World.",

          ),
          my_card_color_image(
            context,
            '3.Hanging Gardens of Babylon',
            Colors.indigo,
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fhanging_garden.jpg?alt=media&token=00959c1f-f538-4dbd-b6f1-391f38b8260d",
              fit: BoxFit.fill,
            ),
            "The Hanging Gardens of Babylon were one of the Seven Wonders of the Ancient World listed by Hellenic culture. They were described as a remarkable feat of engineering with an ascending series of tiered gardens containing a wide variety of trees, shrubs, and vines, resembling a large green mountain constructed of mud bricks. It was said to have been built in the ancient city of Babylon, near present-day Hillah, Babil province, in Iraq.",

          ),
          my_card_color_image(
            context,
            '4.Lighthouse of Alexandria',
            Colors.deepOrange,
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Flighthouse.png?alt=media&token=54e6befb-2c00-43a6-a203-ff6d404318ab",
              fit: BoxFit.fill,
            ),
            "The Lighthouse of Alexandria, sometimes called the Pharos of Alexandria , was a lighthouse built by the Ptolemaic Kingdom, during the reign of Ptolemy II Philadelphus (280–247 BC), which has been estimated to be at least 100 metres (330 ft) in overall height. One of the Seven Wonders of the Ancient World, for many centuries it was one of the tallest man-made structures in the world.",
          ),
          my_card_color_image(
            context,
            '5.Mausoleum at Halicarnassus',
            Colors.green,
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fmausoleum.jpg?alt=media&token=d96f2dad-a723-423d-a00f-a713bf0904f0",
              fit: BoxFit.fill,
            ),
            "The Mausoleum at Halicarnassus or Tomb of Mausolus was a tomb built between 353 and 350 BC in Halicarnassus (present Bodrum, Turkey) for Mausolus, a native Anatolian from Caria and a satrap in the Achaemenid Empire, and his sister-wife Artemisia II of Caria. The structure was designed by the Greek architects Satyros and Pythius of Priene. Its elevated tomb structure is derived from the tombs of neighbouring Lycia, a territory Mausolus had invaded and annexed circa 360 BC, such as the Nereid Monument",

          ),
          my_card_color_image(
            context,
            '6.Statue of Zeus at Olympia',
            Colors.cyan,
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fstatue_zeus.jpg?alt=media&token=23ce9598-d851-44e3-b500-b06a5d300015",
              fit: BoxFit.fill,
            ),
            "The Statue of Zeus at Olympia was a giant seated figure, about 12.4 m (41 ft) tall, made by the Greek sculptor Phidias around 435 BC at the sanctuary of Olympia, Greece, and erected in the Temple of Zeus there. Zeus was the sky and thunder god in ancient Greek religion, who ruled as king of the gods of Mount Olympus.",

          ),
          my_card_color_image(
            context,
            '7.Temple of Artemis',
            Colors.blueAccent,
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Ftemple_artemis.jpg?alt=media&token=80ea7a23-89a2-47a2-996e-eac71f82c6f3",
              fit: BoxFit.fill,
            ),
            "The Temple of Artemis or Artemision  also known less precisely as the Temple of Diana, was a Greek temple dedicated to an ancient, local form of the goddess Artemis (associated with Diana, a Roman goddess). It was located in Ephesus (near the modern town of Selçuk in present-day Turkey). It was completely rebuilt twice, once after a devastating flood and three hundred years later after an act of arson, and in its final form was one of the Seven Wonders of the Ancient World. By 401 AD it had been ruined or destroyed. Only foundations and fragments of the last temple remain at the site.",

          ),
        ],
      ),
    );
  }
}
