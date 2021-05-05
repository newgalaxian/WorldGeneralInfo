import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:world_general_info/my_widget/my_card.dart';
import 'package:world_general_info/pages/continent.dart';
import 'package:world_general_info/pages/continents/ui_view/continents_view.dart';
import 'package:world_general_info/pages/mountains.dart';
import 'package:world_general_info/pages/oceans.dart';
import 'package:world_general_info/pages/rivers.dart';
import 'package:world_general_info/pages/top_ten.dart';
import 'package:world_general_info/pages/wonderers_new.dart';
import 'package:world_general_info/pages/wonderers_old.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'World General Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'World General Info'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<InitializationStatus> _initGoogleMobileAds() {
    return MobileAds.instance.initialize();
  }

  String _selectedItem = 'Sun';
  static const _url_pp = 'http://www.arhamtechmind.com/privacy-policy/';
  static const _url_rate = 'https://play.google.com/store/apps/details?id=com.arhamtechmind.world_general_info';
  static const _url_more = 'https://play.google.com/store/apps/developer?id=hamroapp';

  List _options = ['More Apps', 'Share App', 'Rate App', 'Privacy Policy'];
  void _launchURL() async =>
      await canLaunch(_url_pp) ? await launch(_url_pp) : throw 'Could not launch $_url_pp';
  void _launchURL2() async =>
      await canLaunch(_url_rate) ? await launch(_url_rate) : throw 'Could not launch $_url_rate';
  void _launchURL3() async =>
      await canLaunch(_url_more) ? await launch(_url_more) : throw 'Could not launch $_url_more';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Icon(Icons.blur_circular_rounded),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) {
              return _options
                  .map((day) => PopupMenuItem(
                        child: Text(day),
                        value: day,
                      ))
                  .toList();
            },
            onSelected: (index)  {
              switch (index) {
                case 'More Apps':
                 _launchURL3();
                  break;
                case 'Share App':
                  Share.share('''Install World General Info 
                  https://play.google.com/store/apps/details?id=com.arhamtechmind.world_general_info''');
                  break;
                case 'Rate App':
                 _launchURL2();
                  break;
                case 'Privacy Policy':
                  _launchURL();
                  break;
              }
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ContinentsView(),
                InkWell(
                  child: my_card(
                      context,
                      IconButton(
                        icon: Icon(
                          Icons.landscape,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Colors.white,
                      "Continents"),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: MyContinents()));
                  },
                ),
                InkWell(
                  child: my_card(
                      context,
                      IconButton(
                        icon: Icon(
                          Icons.cloud,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Colors.amber,
                      "Oceans"),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: MySwipePage()));
                  },
                ),
                InkWell(
                  child: my_card(
                      context,
                      IconButton(
                        icon: Icon(
                          Icons.landscape,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Colors.amber,
                      "Top 10 Mountains"),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: Mtn()));
                  },
                ),
                InkWell(
                  child: my_card(
                      context,
                      IconButton(
                        icon: Icon(
                          Icons.add_road,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Colors.amber,
                      "Top 10 Rivers"),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: Rivers()));
                  },
                ),
                InkWell(
                  child: my_card(
                      context,
                      IconButton(
                        icon: Icon(
                          Icons.cloud,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      Colors.amber,
                      "Top 10"),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.leftToRight,
                            child: TopTen()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.cyan, Colors.indigo]),
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
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 16, right: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.cloud,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      '7 Wonders of the World',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.white,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: HexColor('#fffffff').withOpacity(0.9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Colors.indigo,
                                            Colors.cyan
                                          ]),
                                          //color: MyAppTheme.background,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topRight: Radius.circular(68.0)),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: MyAppTheme.grey
                                                    .withOpacity(0.2),
                                                offset: Offset(1.1, 1.1),
                                                blurRadius: 10.0),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                              icon: Icon(
                                                Icons.landscape_outlined,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {},
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Text(
                                                'Modern',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.white,
                                                  letterSpacing: 1.2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                type: PageTransitionType
                                                    .leftToRight,
                                                child: ModernWonderers()));
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Colors.indigo,
                                            Colors.cyan
                                          ]),
                                          //color: MyAppTheme.background,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topRight: Radius.circular(68.0)),
                                          boxShadow: <BoxShadow>[
                                            BoxShadow(
                                                color: MyAppTheme.grey
                                                    .withOpacity(0.2),
                                                offset: Offset(1.1, 1.1),
                                                blurRadius: 10.0),
                                          ],
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                              icon: Icon(
                                                Icons.landscape_outlined,
                                                color: Colors.white,
                                              ),
                                              onPressed: () {},
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(16.0),
                                              child: Text(
                                                'Ancient',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.white,
                                                  letterSpacing: 1.2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                type: PageTransitionType
                                                    .leftToRight,
                                                child: AncientWonderers()));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
