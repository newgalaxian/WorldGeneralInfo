import 'package:country_provider/country_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_general_info/pages/continents/africa.dart';
import 'package:world_general_info/pages/continents/american.dart';
import 'package:world_general_info/pages/continents/americas.dart';
import 'package:world_general_info/pages/continents/antartica.dart';
import 'package:world_general_info/pages/continents/asia.dart';
import 'package:world_general_info/pages/continents/australia.dart';
import 'package:world_general_info/pages/continents/europe.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';


void main() {
  runApp(MaterialApp(home: MyContinents()));
}

class MyContinents extends StatefulWidget {
  @override
  _MyContinentsState createState() => _MyContinentsState();
}

class _MyContinentsState extends State<MyContinents>
    with TickerProviderStateMixin {
  final List<MyTabs> _tabs = [
    MyTabs(title: "Asia", color: Colors.teal[700]),
    MyTabs(title: "Europe", color: Colors.indigo[700]),
    MyTabs(title: "Africa", color: Colors.cyan[700]),
    MyTabs(title: "Australia", color: Colors.brown[700]),
    MyTabs(title: "North America", color: Colors.blue[700]),
    MyTabs(title: "South America", color: Colors.red[700]),
    MyTabs(title: "Antartica", color: Colors.blueGrey[700]),
  ];
  MyTabs _myHandler;

  TabController _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 7, vsync: this);
    _myHandler = _tabs[0];
    _controller.addListener(_handleSelected);
  }

  void _handleSelected() {
    setState(() {
      _myHandler = _tabs[_controller.index];
    });
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: MyAppTheme.dark_grey,
        appBar: AppBar(
          backgroundColor: _myHandler.color,
          bottom: PreferredSize(
            child: TabBar(
              controller: _controller,
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: _tabs[0].title,
                ),
                Tab(
                  text: _tabs[1].title,
                ),
                Tab(
                  text: _tabs[2].title,
                ),
                Tab(
                  text: _tabs[3].title,
                ),
                Tab(
                  text: _tabs[4].title,
                ),
                Tab(
                  text: _tabs[5].title,
                ),
                Tab(
                  text: _tabs[6].title,

                ),
              ],
            ),
            preferredSize: Size.fromHeight(40.0),
          ),
          title: Text(
            'Continents',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            MyHomePageAsia(),
            MyHomePageEurope(),
            MyHomePageAfrica(),
            MyHomePageAustralia(),
            MyHomePageAmerican(),
            MyHomePageAmericas(),
            MyHomePageAntartica(),
          ],
        ),
      ),
    );
  }
}

class MyTabs {
  final String title;
  final Color color;

  MyTabs({this.title, this.color});
}
