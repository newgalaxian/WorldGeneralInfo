import 'package:flutter/material.dart';
import 'package:world_general_info/my_widget/my_card.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';

void main() {
  runApp(MaterialApp(
    home: ModernWonderers(),
  ));
}

class ModernWonderers extends StatefulWidget {
  @override
  _ModernWonderersState createState() => _ModernWonderersState();
}

class _ModernWonderersState extends State<ModernWonderers> {

  PageController _controller =
  PageController(initialPage: 0, viewportFraction: 0.85);
  String oceanDetails;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final TextStyle optionStyle = TextStyle(
    fontSize: 14.0,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppTheme.dark_grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Modern Wonders", style: TextStyle(
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
            '1.Great Wall of China',
            Colors.teal,
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fgreat_wall.jpg?alt=media&token=a59510f0-4e04-4623-9c42-6fc8094635e7",

              fit: BoxFit.fill,
            ),
            "The Great Wall of China is the collective name of a series of fortification systems generally built across the historical northern borders of China to protect and consolidate territories of Chinese states and empires against various nomadic groups of the steppe and their polities. Several walls were being built from as early as the 7th century BC by ancient Chinese states; selective stretches were later joined together by Qin Shi Huang (220–206 BC), the first emperor of China. Little of the Qin wall remains. Later on, many successive dynasties have built and maintained multiple stretches of border walls. The most well-known sections of the wall were built by the Ming dynasty (1368–1644).",
          ),
          my_card_color_image(context, '2.Petra', Colors.cyan,
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fpetra.jpg?alt=media&token=f103efd6-f9a6-49e3-88e0-0913feaa614c",

                fit: BoxFit.fill,
              ),
              '''Petra , originally known to its inhabitants in Nabataean Aramaic as Raqēmō, is a historical and archaeological city in southern Jordan. Petra lies around Jabal Al-Madbah in a basin surrounded by mountains which form the eastern flank of the Arabah valley that runs from the Dead Sea to the Gulf of Aqaba.
              The area around Petra has been inhabited from as early as 7000 BC, and the Nabataeans might have settled in what would become the capital city of their kingdom, as early as the 4th century BC. However, archaeological work has only discovered evidence of Nabataean presence dating back to the second century BC,[8] by which time Petra had become their capital.[6] The Nabataeans were nomadic Arabs who invested in Petra's proximity to the trade routes by establishing it as a major regional trading hub.'''),
          my_card_color_image(context, '3.Colosseum', Colors.green,
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fcolosseum.jpg?alt=media&token=df541ba6-662b-4c3a-8545-7792fa261c80",
                fit: BoxFit.fill,
              ),
              '''The Colosseum , also known as the Flavian Amphitheatre , is an oval amphitheatre in the centre of the city of Rome, Italy. Built of travertine limestone, tuff (volcanic rock), and brick-faced concrete,[1] it was the largest amphitheatre ever built at the time and held 50,000 to 80,000 spectators. The Colosseum is just east of the Roman Forum. 
              Construction began under the emperor Vespasian in AD 72 and was completed in AD 80 under his successor and heir, Titus. Further modifications were made during the reign of Domitian (81–96).[4] These three emperors are known as the Flavian dynasty, and the amphitheatre was named in Latin for its association with their family name (Flavius).'''),
          my_card_color_image(context, '4.Chichen Itza', Colors.brown,
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fchichen_itza.jpg?alt=media&token=989e7f7b-3ba4-4f06-8dd1-220e95d4163d",
                fit: BoxFit.fill,
              ),
              '''Chichen Itza was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico.
              Chichen Itza was a major focal point in the Northern Maya Lowlands from the Late Classic (c. AD 600–900) through the Terminal Classic (c. AD 800–900) and into the early portion of the Postclassic period (c. AD 900–1200). The site exhibits a multitude of architectural styles, reminiscent of styles seen in central Mexico and of the Puuc and Chenes styles of the Northern Maya lowlands. The presence of central Mexican styles was once thought to have been representative of direct migration or even conquest from central Mexico, but most contemporary interpretations view the presence of these non-Maya styles more as the result of cultural diffusion.'''),
          my_card_color_image(context, '5.Machu Picchu', Colors.indigoAccent,
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fmachu.jpg?alt=media&token=e683d210-b767-4f19-aef3-77593a68ffa2",
                fit: BoxFit.fill,
              ),
              '''Machu Picchu is a 15th-century Inca citadel, located in the Eastern Cordillera of southern Peru, on a 2,430-metre (7,970 ft) mountain ridge. It is located in the Machupicchu District within Urubamba Province above the Sacred Valley, which is 80 kilometres (50 mi) northwest of Cuzco. The Urubamba River flows past it, cutting through the Cordillera and creating a canyon with a tropical mountain climate.
              Most archaeologists believe that Machu Picchu was constructed as an estate for the Inca emperor Pachacuti (1438–1472). Often mistakenly referred to as the "Lost City of the Incas", it is the most familiar icon of Inca civilization. The Incas built the estate around 1450 but abandoned it a century later at the time of the Spanish conquest. Although known locally, it was not known to the Spanish during the colonial period and remained unknown to the outside world until American historian Hiram Bingham brought it to international attention in 1911.'''),
          my_card_color_image(context, '6.Taj Mahal', Colors.pink,
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Ftaj_mahal.jpg?alt=media&token=54413cdc-fc3b-4d0b-a127-163753a67c99",
                fit: BoxFit.fill,
              ),
              '''The Taj Mahal 'Crown of the Palace', is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan (reigned from 1628 to 1658) to house the tomb of his favourite wife, Mumtaz Mahal; 
              it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.
              Construction of the mausoleum was essentially completed in 1643, but work continued on other phases of the project for another 10 years. 
              The Taj Mahal complex is believed to have been completed in its entirety in 1653 at a cost estimated at the time to be around 32 million rupees, which in 2020 would be approximately 70 billion rupees (about U.S. \$916 million). The construction project employed some 20,000 artisans under the guidance of a board of architects led by the court architect to the emperor, Ustad Ahmad Lahauri.'''),
          my_card_color_image(context, '7.Christ the Redeemer', Colors.purple,
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/wonderers%2Fchrist_redeemer.jpg?alt=media&token=99649b96-a3b7-4bd2-ac69-7fdbe3e38477",
                fit: BoxFit.fill,
              ),
              '''Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio De Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot. Romanian sculptor Gheorghe Leonida fashioned the face. 
              Constructed between 1922 and 1931, the statue is 30 metres (98 ft) high, excluding its 8-metre (26 ft) pedestal. The arms stretch 28 metres (92 ft) wide.'''),
        ],
      ),
    );
  }
}
