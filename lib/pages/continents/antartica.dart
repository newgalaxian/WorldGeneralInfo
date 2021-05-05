import 'package:country_provider/country_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePageAntartica(),
    );
  }
}

class MyHomePageAntartica extends StatefulWidget {
  MyHomePageAntartica({Key key}) : super(key: key);

  @override
  _MyHomePageAntarticaState createState() => _MyHomePageAntarticaState();
}

class _MyHomePageAntarticaState extends State<MyHomePageAntartica> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        title: Text('MyApp'),
      ),*/
      backgroundColor: Color(0xfff1f1f1),
      body: Container(
        alignment: Alignment.center,
        child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      side: BorderSide(color: Colors.white70, width: 1),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                    color: Colors.blueGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        padding: const EdgeInsets.only(
                            bottom: kFloatingActionButtonMargin + 48),
                        children: [
                          Text(
                            "Antarctica is Earth's southernmost continent. It contains the geographic South Pole and is situated in the Antarctic region of the Southern Hemisphere, almost entirely south of the Antarctic Circle, and is surrounded by the Southern Ocean. At 14,200,000 square kilometres (5,500,000 square miles), it is the fifth-largest continent and nearly twice the size of Australia. At 0.00008 people per square kilometre, it is by far the least densely populated continent. About 98% of Antarctica is covered by ice that averages 1.9 km (1.2 mi; 6,200 ft) in thickness, which extends to all but the northernmost reaches of the Antarctic Peninsula.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Antarctica, on average, is the coldest, driest, and windiest continent, and has the highest average elevation of all the continents. Most of Antarctica is a polar desert, with annual precipitation of 200 mm (7.9 in) along the coast and far less inland; there has been no rain there for almost 2 million years, yet 80% of the world freshwater reserves are stored there, enough to raise global sea levels by about 60 metres (200 ft) if all of it were to melt. The temperature in Antarctica has reached −89.2 °C (−128.6 °F) (or even −94.7 °C (−135.8 °F) as measured from space), though the average for the third quarter (the coldest part of the year) is −63 °C (−81 °F). Anywhere from 1,000 to 5,000 people reside throughout the year at research stations scattered across the continent. Organisms native to Antarctica include many types of algae, bacteria, fungi, plants, protista, and certain animals, such as mites, nematodes, penguins, seals and tardigrades. Vegetation, where it occurs, is tundra.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
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
                      ),
                    ),
                  ),
      ),
    );
  }
}
