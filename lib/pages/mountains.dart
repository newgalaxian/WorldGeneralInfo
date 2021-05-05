import 'package:flutter/material.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';

void main() {
  runApp(MaterialApp(
    home: Mtn(),
  ));
}

class Mtn extends StatefulWidget {
  @override
  _MtnState createState() => _MtnState();
}

class _MtnState extends State<Mtn> {
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
          title: Text("Top 10 Mountains", style: TextStyle(
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
            mtn_card(
              context,
              Colors.teal,
              "1.Mount Everest",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Feverest.jpg?alt=media&token=d019d558-e3dd-4fae-b212-f4e179901248",
                fit: BoxFit.fill,
              ),
              '''Mount Everest is Earth's highest mountain above sea level, located in the Mahalangur Himal sub-range of the Himalayas. The China–Nepal border runs across its summit point.
              The current official elevation of 8,848 m (29,029 ft), recognised by China and Nepal, was established by a 1955 Indian survey and confirmed by a 1975 Chinese survey.
               Tenzing Norgay and Edmund Hillary made the first official ascent of Everest in 1953, using the southeast ridge route. ''',
            ),
            mtn_card(
              context,
              Colors.deepOrange,
              "2.K2",
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/world_map.png',
                image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Fk2.jpg?alt=media&token=11deaba0-58ae-4b86-b0fc-77b06646cde5",
                height: 200,
              ),
              '''K2, at 8,611 metres (28,251 ft) above sea level, is the second highest mountain in the world, after Mount Everest at 8,848 metres (29,029 ft). It is located on the China–Pakistan border between Baltistan in the Gilgit-Baltistan region of northern Pakistan, and Dafdar Township in Taxkorgan Tajik Autonomous County of Xinjiang, China. K2 is the highest point of the Karakoram range and the highest point in both Pakistan and Xinjiang.
              K2 is known as the Savage Mountain after George Bell, a climber on the 1953 American Expedition, told reporters "It's a savage mountain that tries to kill you." Of the five highest mountains in the world, K2 is the deadliest: approximately one person dies on the mountain for every four who reach the summit. Also occasionally known as Chhogori, or Mount Godwin-Austen, other nicknames for K2 are The King of Mountains and The Mountaineers' Mountain''',
            ),
            mtn_card(context,
                Colors.indigo,
                "3.Kangchenjunga",
                FadeInImage.assetNetwork(placeholder: 'assets/images/world_map.png',
                  image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Fkangchenjunga.jpg?alt=media&token=c5cf4f0e-3c4a-4fbe-92fa-18438ec1f1c3",

                ),
                '''Kangchenjunga, also spelled Kanchenjunga, is the third highest mountain in the world. It rises with an elevation of 8,586 m (28,169 ft) in a section of the Himalayas called Kangchenjunga Himal delimited in the west by the Tamur River, in the north by the Lhonak Chu and Jongsang La, and in the east by the Teesta River. It lies between Nepal and Sikkim, India, with three of the five peaks (Main, Central, and South) directly on the border, and the remaining two (West and Kangbachen) in Nepal's Taplejung District
                Until 1852, Kangchenjunga was assumed to be the highest mountain in the world, but calculations based on various readings and measurements made by the Great Trigonometrical Survey of India in 1849 came to the conclusion that Mount Everest, known as Peak XV at the time, was the highest. Allowing for further verification of all calculations, it was officially announced in 1856 that Kangchenjunga is the third highest mountain in the world
                Kangchenjunga was first climbed on 25 May 1955 by Joe Brown and George Band, who were part of a British expedition. '''),
            mtn_card(context,
                Colors.green,
                "4.Lhotse",
                FadeInImage.assetNetwork(placeholder: 'assets/images/world_map.png',
                  image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Flhotse.jpg?alt=media&token=60f4b11a-9fec-4a0d-8f6f-b2cdf4fcdc54",

                ),
                '''Lhotse is the fourth highest mountain in the world at 8,516 metres (27,940 ft), after Mount Everest, K2, and Kangchenjunga. Part of the Everest massif, Lhotse is connected to the latter peak via the South Col. Lhotse means “South Peak” in Tibetan. In addition to the main summit at 8,516 metres (27,940 ft) above sea level, the mountain comprises the smaller peaks Lhotse Middle (East) at 8,414 m (27,605 ft), and Lhotse Shar at 8,383 m (27,503 ft). The summit is on the border between Tibet of China and the Khumbu region of Nepal.'''),
            mtn_card(context,
                Colors.amber[700],
                "5.Makalu",
                FadeInImage.assetNetwork(placeholder: 'assets/images/world_map.png',
                  image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Fmakalu.jpg?alt=media&token=9977e227-6dca-4a55-b53c-5e71086063cd",

                ),
                '''Makalu is the fifth highest mountain in the world at 8,485 metres (27,838 ft). It is located in the Mahalangur Himalayas 19 km (12 mi) southeast of Mount Everest, on the border between Nepal and Tibet Autonomous Region, China. One of the eight-thousanders, Makalu is an isolated peak whose shape is a four-sided pyramid.
                Makalu has two notable subsidiary peaks. Kangchungtse, or Makalu II (7,678 m) lies about 3 kilometres (1.9 mi) north-northwest of the main summit. Rising about 5 km (3.1 mi) north-northeast of the main summit across a broad plateau, and connected to Kangchungtse by a narrow, 7,200 m saddle, is Chomo Lonzo (7,804 m).'''),
            mtn_card(context, Colors.blue,
                "6.Cho Oyu",
                FadeInImage.assetNetwork(placeholder: 'assets/images/world_map.png',
                  image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Fchooyu.jpg?alt=media&token=e33eca70-d4d8-4dca-870b-01e45caa16bb",

                ),
                '''Cho Oyu is the sixth-highest mountain in the world at 8,188 metres (26,864 ft) above sea level. Cho Oyu means "Turquoise Goddess" in Tibetan. The mountain is the westernmost major peak of the Khumbu sub-section of the Mahalangur Himalaya 20 km west of Mount Everest. The mountain stands on the China–Nepal border.
                Just a few kilometres west of Cho Oyu is Nangpa La (5,716m/18,753 ft), a glaciated pass that serves as the main trading route between the Tibetans and the Khumbu's Sherpas. This pass separates the Khumbu and Rolwaling Himalayas. Due to its proximity to this pass and the generally moderate slopes of the standard northwest ridge route, Cho Oyu is considered the easiest 8,000 metre peak to climb. It is a popular objective for professionally guided parties.'''),
            mtn_card(context, Colors.blueGrey,
                "7.Dhaulagiri",
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/world_map.png',
                  image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Fdhaulagiri.jpg?alt=media&token=39e76a64-bbe5-4bdf-89c4-0910442dc5e7",

                ),
                '''The Dhaulagiri massif in Nepal extends 120 km (70 mi) from the Kaligandaki River west to the Bheri. This massif is bounded on the north and southwest by tributaries of the Bheri River and on the southeast by the Myagdi Khola. Dhaulagiri is the seventh highest mountain in the world at 8,167 metres (26,795 ft) above sea level, and the highest mountain within the borders of a single country (Nepal). It was first climbed on 13 May 1960 by a Swiss/Austrian/Nepali expedition.'''),
            mtn_card(context, Colors.brown,
                "8.Manaslu",
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/world_map.png',
                  image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Fmanaslu.JPG?alt=media&token=e12b921c-3231-4032-991a-36ec80132cf6",

                ),
                '''Manaslu is the eighth-highest mountain in the world at 8,163 metres (26,781 ft) above sea level. It is in the Mansiri Himal, part of the Nepalese Himalayas, in the west-central part of Nepal. The name Manaslu means "mountain of the spirit" and is derived from the Sanskrit word manasa, meaning "intellect" or "soul". Manaslu was first climbed on May 9, 1956 by Toshio Imanishi and Gyalzen Norbu, members of a Japanese expedition. It is said that "just as the British consider Everest their mountain, Manaslu has always been a Japanese mountain".'''),
            mtn_card(context, Colors.red,
                "9.Nanga Parbat",
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/world_map.png',
                  image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Fnanga_parbat.jpg?alt=media&token=c0c0cb7e-8203-4952-9a8f-42de44a878df",

                ),
                '''Nanga Parbat , locally known as Diamer , is the ninth highest mountain in the world at 8,126 metres (26,660 ft) above sea level. Located in the Diamer District of Gilgit-Baltistan region, Pakistan, Nanga Parbat is the western anchor of the Himalayas. The name Nanga Parbat is derived from the Sanskrit words nanga and parvata which together mean "Naked Mountain". The mountain is locally known by its Tibetan name Diamer or Deo Mir, meaning "huge mountain".
                Nanga Parbat is one of the 14 eight-thousanders. An immense, dramatic peak rising far above its surrounding terrain, Nanga Parbat is known to be a difficult climb.'''),
            mtn_card(context, Colors.black,
                "10.Annapurna ",
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/world_map.png',
                  image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/mt%2Fannapurna.jpg?alt=media&token=6aedde94-3949-4c80-846e-ba61b5ccff1d",

                ),
                '''Annapurna is a massif in the Himalayas in north-central Nepal that includes one peak over 8,000 metres (26,000 ft), thirteen peaks over 7,000 metres (23,000 ft), and sixteen more over 6,000 metres (20,000 ft).The massif is 55 kilometres (34 mi) long, and is bounded by the Kali Gandaki Gorge on the west, the Marshyangdi River on the north and east, and by Pokhara Valley on the south. At the western end, the massif encloses a high basin called the Annapurna Sanctuary. The highest peak of the massif, Annapurna I Main, is the tenth highest mountain in the world at 8,091 metres (26,545 ft) above sea level. Maurice Herzog led a French expedition to its summit through the north face in 1950, making it the first of the eight-thousanders to be climbed and the only 8,000 meter-peak to be conquered on the first try.'''),
          ],
        ));
  }
}

Widget mtn_card(
    BuildContext contex,Color color, String title, FadeInImage image, String details) {
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
