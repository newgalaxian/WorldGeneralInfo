import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:world_general_info/AdHelper.dart';
import 'package:world_general_info/ui_theme/my_app_theme.dart';

void main() {
  runApp(MaterialApp(
    home: TopTen(),
  ));
}

class TopTen extends StatefulWidget {
  @override
  _TopTenState createState() => _TopTenState();
}

class _TopTenState extends State<TopTen> {
  PageController _controller =
      PageController(initialPage: 0, viewportFraction: 0.85);

  BannerAd _bannerAd;

  bool _isBannerAdReady = false;
  @override
  void initState() {
    super.initState();

    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: AdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();

  }

  @override
  void dispose() {
    _controller.dispose();
    _bannerAd.dispose();
    super.dispose();
  }

  Color color_title = Colors.white;
  Color color_sub = Colors.white54;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppTheme.dark_grey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Top 10 of the World", style: TextStyle(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_isBannerAdReady)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
            ),
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                card_list(
                  context,
                  Colors.teal,
                  'Largest Country',
                  Column(
                    children: [
                      ListTile(
                        title: Text('Russia',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('17,098,246  km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        autofocus: true,
                        //trailing: Icon(Icons.more_vert),

                        // Image.asset('icons/flags/png/de.png', package: 'country_icons'),
                      ),
                      ListTile(
                        title: Text('Canada',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('9,984,670 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('China',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('9,596,961 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('United States',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('9,525,067 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Brazil',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('8,515,767 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Australia',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('7,692,024 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('India',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('3,287,263 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Argentina',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('2,780,400 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Kazakhstan',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '2,724,900 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Algeria',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '2,381,741  km2',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        // trailing: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
                card_list(
                  context,
                  Colors.cyan[700],
                  'Smallest Country',
                  Column(
                    children: [
                      ListTile(
                        title: Text('Vatican City',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(' 0.44 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        autofocus: true,
                        //trailing: Icon(Icons.more_vert),

                        // Image.asset('icons/flags/png/de.png', package: 'country_icons'),
                      ),
                      ListTile(
                        title: Text('Monaco',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('2.02 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Nauru',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('21 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Tuvalu',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('26 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('San Marino',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('61 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Liechtenstein',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('160 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Marshall Islands',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('181 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Saint Kitts and Nevis',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('269 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Maldives',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '300 km2',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Malta',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '316  km2',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        // trailing: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
                card_list(
                  context,
                  Colors.indigo,
                  'Populous Country [2018]',
                  Column(
                    children: [
                      ListTile(
                        title: Text('China',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('1,426,279,708',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        autofocus: true,
                        //trailing: Icon(Icons.more_vert),

                        // Image.asset('icons/flags/png/de.png', package: 'country_icons'),
                      ),
                      ListTile(
                        title: Text('India',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('1,338,558,742',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('United States',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('327,527,107',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Indonesia',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('263,564,697',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Brazil',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('210,193,253',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Pakistan',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('194,749,053',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Nigeria',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('185,313,910',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Bangladesh',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('165,552,994',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Russia',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '144,154,086',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Mexico',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '129,132,150',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        // trailing: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
                card_list(
                  context,
                  Colors.brown,
                  "Richest Country | GDP(PPP) per capita 2018 (Intl \$)",
                  Column(
                    children: [
                      ListTile(
                        title: Text('Liechtenstein',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('GDP : 139,100',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        autofocus: true,
                        //trailing: Icon(Icons.more_vert),

                        // Image.asset('icons/flags/png/de.png', package: 'country_icons'),
                      ),
                      ListTile(
                        title: Text('Qatar',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('128,703',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Monaco',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('115,700',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Luxembourg',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('110,870',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Singapore',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('98,014',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Ireland',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('79,925',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Brunei',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('79,726',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Norway',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('74,065',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'United Arab Emirates',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '68,662',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Kuwait',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '66,673',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        // trailing: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
                card_list(
                  context,
                  Colors.transparent,
                  "World's Largest Cities",
                  Column(
                    children: [
                      ListTile(
                        title: Text('Tokyo, Japan',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('28,000,000',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        autofocus: true,
                        //trailing: Icon(Icons.more_vert),

                        // Image.asset('icons/flags/png/de.png', package: 'country_icons'),
                      ),
                      ListTile(
                        title: Text('New York City, United States',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('20,100,000',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Mexico City, Mexico',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('18,100,000',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Bombay, India',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('18,000,000',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Sao Paulo, Brazil',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('17,700,000',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Los Angeles, United States',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('15,800,000',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Shanghai, China',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('14,200,000',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Lagos, Nigeria',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('13,500,000',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Calcutta, India',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '12,900,000',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Buenos Aires, Argentina',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '12,500,000',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        // trailing: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
                card_list(
                  context,
                  Colors.pink[700],
                  "Most spoken languages in the world",
                  Column(
                    children: [
                      ListTile(
                        title: Text('English ',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('1,132 million',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        autofocus: true,
                        //trailing: Icon(Icons.more_vert),

                        // Image.asset('icons/flags/png/de.png', package: 'country_icons'),
                      ),
                      ListTile(
                        title: Text('Mandarin Chinese',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('1,117 million',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Hindi',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('615 million',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Spanish ',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('534 million',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('French ',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('280 million',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Standard Arabic',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('274 million',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Bengali ',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('265 million',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text('Russian',
                          style: TextStyle(
                            color: color_title,
                          ),),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text('258 million',
                          style: TextStyle(
                            color: color_sub,
                          ),),
                        // trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Portuguese ',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '234 million',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        //trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        title: Text(
                          'Indonesian ',
                          style: TextStyle(
                            color: color_title,
                          ),
                        ),
                        leading: Icon(
                          Icons.sports_volleyball,
                          color: color_title,
                        ),
                        subtitle: Text(
                          '199 million',
                          style: TextStyle(
                            color: color_sub,
                          ),
                        ),
                        // trailing: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget card_list(BuildContext context,Color color, String country, Widget widget) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32.0),
      side: BorderSide(color: Colors.white70, width: 1),
    ),
    elevation: 5,
    margin: EdgeInsets.all(4.0),
    color: color,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              country,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3),
            ),
          ),
          // line draw
          Container(
            height: 2,
            width: 60,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            // child:Icon(Icons.drag_handle)
          ),
          SizedBox(
            height: 3.0,
          ),
          widget,
          SizedBox(
            height: 3.0,
          ),
          Center(
            child: Text(
              "Source : Wikipedia",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
