import 'package:flutter/material.dart';
import 'package:world_general_info/my_widget/ocean_name.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';


main() => runApp(MaterialApp(home: MySwipePage()));

class MySwipePage extends StatefulWidget {
  @override
  _MySwipePageState createState() => _MySwipePageState();
}

class _MySwipePageState extends State<MySwipePage> {
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
        title: Text("Oceans", style: TextStyle(
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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
              side: BorderSide(color: Colors.white70, width: 1),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10.0),
            color: Colors.cyan[700],
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ListView(
                children: [
                  Text(
                    'Some Facts',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(color: Colors.white),
                  ),
                  Column(
                    children: [
                      Text(''),
                  ListTile(
                    title:  Text('Mariana Trench, Pacific 35,827 ft',style: optionStyle,textAlign: TextAlign.start,),
                    dense: true,
                    leading: Icon(Icons.workspaces_filled,
                      color: Colors.white,
                    ),
                  ),
                      ListTile(
                        title:  Text('Puerto Rico Trench, Atlantic 30,246 ft',style: optionStyle,textAlign: TextAlign.start,),
                        dense: true,
                        leading: Icon(Icons.workspaces_filled,
                          color: Colors.white,
                        ),
                      ),
                      ListTile(
                        title:  Text('Java Trench, Indian 24,460 ft',style: optionStyle,textAlign: TextAlign.start,),
                        dense: true,
                        leading: Icon(Icons.workspaces_filled,
                          color: Colors.white,
                        ),
                      ),
                      ListTile(
                        title:  Text('Arctic Basin, Arctic 18,456 ft',style: optionStyle,textAlign: TextAlign.start,),
                        dense: true,
                        leading: Icon(Icons.workspaces_filled,
                          color: Colors.white,
                        ),
                      ),
                      ListTile(
                        title:  Text('Southern Ocean, 23,737 ft',style: optionStyle,textAlign: TextAlign.start,),
                        dense: true,
                        leading: Icon(Icons.workspaces_filled,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox( height: 15.0, ),
                ],
              ),
            ),
          ),
          ocean_name(
            context,
            Colors.red[900],
            'Pacific Ocean',
            ocean[0],
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/pacific_ocean.png?alt=media&token=38718415-8ac9-4edf-9cfc-ca0aca0a7f04",
              fit: BoxFit.fill,
            ),
          ),
          ocean_name(
            context,
            Colors.green[700],
            'Atlantic Ocean',
            ocean[1],
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/atlantic_ocean.png?alt=media&token=0f867f69-77c2-464e-bb0c-cffa9fdfa3dc",
              fit: BoxFit.fill,
            ),
          ),
          ocean_name(
            context,
            Colors.indigo[400],
            'Indian Ocean',
            ocean[2],
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/indian_ocean.png?alt=media&token=64905835-807d-4673-8782-60d54b29fa02",
              fit: BoxFit.fill,
            ),
          ),
          ocean_name(
            context,
            Colors.blueGrey,
            'Arctic Ocean',
            ocean[3],
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/arctic_ocean.png?alt=media&token=858dc4d1-7ae9-4ebf-9ed5-d0b54fdf79d5",
              fit: BoxFit.fill,
            ),

          ),
          ocean_name(
            context,
            Colors.teal[700],
            'Antarctic Ocean',
            ocean[4],
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/world_map.png',
              image: "https://firebasestorage.googleapis.com/v0/b/arham-835ab.appspot.com/o/antartic_ocean.png?alt=media&token=4d64688b-3b51-42ad-a023-03d82aeab626",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  List<String> ocean = [
    "The Pacific Ocean is the largest and deepest of Earth's oceanic divisions. It extends from the Arctic Ocean in the north to the Southern Ocean (or, depending on definition, to Antarctica) in the south and is bounded by the continents of Asia and Australia in the west and the Americas in the east.At 165,250,000 square kilometers (63,800,000 square miles) in area (as defined with an Antarctic southern border), this largest division of the World Ocean—and, in turn, the hydrosphere—covers about 46% of Earth's water surface and about 32% of its total surface area, making it larger than all of Earth's land area combined. The centers of both the Water Hemisphere and the Western Hemisphere are in the Pacific Ocean. Ocean circulation ( caused by the Coriolis effect ) subdivides it into two largely independent volumes of water, which meet at the equator: the North(ern) Pacific Ocean and South(ern) Pacific Ocean. The Galápagos and Gilbert Islands, while straddling the equator, are deemed wholly within the South Pacific",
    "The Atlantic Ocean is the second-largest of the world's oceans, with an area of about 106,460,000 km2 (41,100,000 sq mi).It covers approximately 20 percent of Earth's surface and about 29 percent of its water surface area. It separates the Old World from the New World.The Atlantic Ocean occupies an elongated, S-shaped basin extending longitudinally between Europe and Africa to the east, and the Americas to the west. As one component of the interconnected World Ocean, it is connected in the north to the Arctic Ocean, to the Pacific Ocean in the southwest, the Indian Ocean in the southeast, and the Southern Ocean in the south (other definitions describe the Atlantic as extending southward to Antarctica). The Equatorial Counter Current subdivides it into the North(ern) Atlantic Ocean and the South(ern) Atlantic Ocean at about 8°N.",
    "The Indian Ocean is the third-largest of the world's oceanic divisions, covering 70,560,000 km2 (27,240,000 sq mi) or 19.8% of the water on Earth's surface. It is bounded by Asia to the north, Africa to the west and Australia to the east. To the south it is bounded by the Southern Ocean or Antarctica, depending on the definition in use.Along its core, the Indian Ocean has some large marginal or regional seas such as the Arabian Sea, the Laccadive Sea, the Somali Sea, Bay of Bengal, and the Andaman Sea.",
    "The Arctic Ocean is the smallest and shallowest of the world's five major oceans. It is also known as the coldest of all the oceans. The International Hydrographic Organization (IHO) recognizes it as an ocean, although some oceanographers call it the Arctic Mediterranean Sea. It is sometimes classified as an estuary of the Atlantic Ocean, and it is also seen as the northernmost part of the all-encompassing World Ocean. The Arctic Ocean includes the North Pole region in the middle of the Northern Hemisphere, and extends south to about 60°N. The Arctic Ocean is surrounded by Eurasia and North America, and the borders follow topographic features; the Bering Strait on the Pacific side, and the Greenland Scotland Ridge on the Atlantic side. It is mostly covered by sea ice throughout the year and almost completely in winter",
    "The Antarctic Ocean, also known as the Southern Ocean or the Austral Ocean, comprises the southernmost waters of the World Ocean, generally taken to be south of 60° S latitude and encircling Antarctica. As such, it is regarded as the second-smallest of the five principal oceanic divisions: smaller than the Pacific, Atlantic, and Indian Oceans but larger than the Arctic Ocean. This oceanic zone is where cold, northward flowing waters from the Antarctic mix with warmer subantarctic waters.",
  ];
}
