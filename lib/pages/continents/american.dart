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
      home: MyHomePageAmerican(),
    );
  }
}

class MyHomePageAmerican extends StatefulWidget {
  MyHomePageAmerican({Key key}) : super(key: key);

  @override
  _MyHomePageAmericanState createState() => _MyHomePageAmericanState();
}

class _MyHomePageAmericanState extends State<MyHomePageAmerican> {
  List<Country> _countryList;
  CountryFilter filter = CountryFilter();
  bool isLoading = false;

  void _searchCountry(int index) async {
    try {
      Navigator.pop(context);
      isLoading = true;
      setState(() {});
      switch (index) {
        case 0:
          _countryList =
              await CountryProvider.getAllCountries(filter: CountryFilter());
          break;
        case 1:
          _countryList = await CountryProvider.getCountriesByListOfCodes(["ai","ag","aw","bs",
            "bb","bz","bm","bq","vg","ca","ky","cr","cu","cw","dm","do","sv","gl","gd","gp","gt",
          "ht","hn","jm","mq","mx","ms","ni","pa","pr","bl","kn","lc","mf","pm","vc","sx","tt","tc","us","vi"],
              filter: CountryFilter());
          break;
        default:
          break;
      }
      isLoading = false;
      setState(() {});

      print(_countryList.first.name);
    } catch (error) {
      print(error);
    }
  }

  void openSearchCountriesButton() async {
    await showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (context) => _countriesButton());
  }

  Widget _countriesButton() {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        return true;
      },
      child: DraggableScrollableSheet(
        initialChildSize: .50,
        minChildSize: .3,
        builder: (BuildContext context, ScrollController scrollcontroller) {
          return Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 50,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  // child:Icon(Icons.drag_handle)
                ),
                Center(
                  child: Text(
                    "Select search option",
                    style: Theme.of(context)
                        .typography
                        .dense
                        .headline6
                        .copyWith(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView(
                    controller: scrollcontroller,
                    children: <Widget>[
                      _button("Search all countries", "", () {
                        _searchCountry(0);
                      }),
                      _button("North American Countries", "", () {
                        _searchCountry(1);
                      }),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _button(String title, String example, Function onPressed) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * .5,
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: MaterialButton(
          color: Colors.blue[700],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: onPressed,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).typography.dense.bodyText1,
                ),
                example.isEmpty
                    ? SizedBox()
                    : Text(
                        example,
                        style: Theme.of(context).typography.dense.bodyText1,
                      ),
              ])
          // visualDensity: VisualDensity.standard,
          ),
    );
  }

  Widget _countryData(Country model) {
    return Container(
      // padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 5,
            color: Color(0xfff6f6f6),
            offset: Offset(5, 5),
          )
        ],
      ),
      child: Theme(
        data: ThemeData(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: _title(model.name),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(color: Colors.grey.shade300, height: 1),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _rowData("Capital", model.capital),
                      _rowData("Region", model.region),
                      _rowData("subregion", model.subregion),
                      _rowData("Alpha2 Code", model.alpha2Code),
                      _rowData("Alpha3 Code", model.alpha3Code),
                      _rowData("Area", model.area.toString()),
                      _showListData("Domain",
                          model.topLevelDomain.map((e) => e).toList()),
                      _rowData("Demonym", model.demonym),
                      _rowData("Timezone", model.timezones?.first),
                      _rowData("Calling code", model.callingCodes?.first),
                      _rowData("Numeric Code", model.numericCode),
                      _rowData("CIOS", model.cioc),
                      _showListData("Currency Name",
                          model.currencies?.map((x) => x?.name)?.toList()),
                      _showListData("Currency code",
                          model.currencies?.map((x) => x?.code)?.toList()),
                      _showListData("Currency Symbol",
                          model.currencies?.map((x) => x?.symbol)?.toList()),
                      _showListData("Lat Long",
                          model.latlng.map((e) => e.toString()).toList()),
                      _showListData("Language",
                          model.languages.map((e) => e.name).toList()),
                      _showListData("Lang Naiive Name",
                          model.languages.map((e) => e.nativeName).toList()),
                      _showListData("Lang iso6391 Code",
                          model.languages.map((e) => e.iso6391).toList()),
                      _showListData("Lang iso6392 Code",
                          model.languages.map((e) => e.iso6392).toList()),
                      _showListData("Regional Blocs",
                          model.regionalBlocs.map((e) => e.name).toList()),
                      _showListData("Regional Blocs Aacronym",
                          model.regionalBlocs.map((e) => e.acronym).toList()),
                      _showListData("Borders", model.borders),
                      _showListData("Alt Spellings", model.altSpellings),
                      _showListData(
                          "Name Translations",
                          model.translations
                              .toJson()
                              .cast<String, String>()
                              .values
                              .toList()),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _title(String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Text(text),
    );
  }

  Widget _rowData(String text, String value) {
    return value == 'null' || value == null
        ? SizedBox()
        : materialWidget(
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Text(
                    text,
                    style: Theme.of(context)
                        .typography
                        .dense
                        .button
                        .copyWith(color: Colors.black),
                  ),
                ),
                Text(":  "),
                Expanded(
                  flex: 4,
                  child: Text(
                    value,
                    style: Theme.of(context)
                        .typography
                        .black
                        .bodyText1
                        .copyWith(color: Colors.black.withOpacity(.7)),
                  ),
                )
              ],
            ),
          );
  }

  Widget _showListData(String title, List<String> list) {
    if (list == null || list.isEmpty) {
      return SizedBox.shrink();
    }
    List<Widget> children = [
      Expanded(
        flex: 3,
        child: Text(
          title,
          style: Theme.of(context)
              .typography
              .dense
              .button
              .copyWith(color: Colors.black),
        ),
      )
    ];
    children.add(Text(":  "));
    children.add(
      Expanded(
        flex: 4,
        child: Container(
          child: Wrap(
            children: list.map((e) {
              if (list.last != e) {
                e = "$e, ";
              }

              return Padding(
                padding: EdgeInsets.only(right: 8),
                child: Text(e ?? ""),
              );
            }).toList(),
          ),
        ),
      ),
    );
    return materialWidget(
      Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children),
    );
  }

  Widget materialWidget(Widget child) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Material(
        shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.08)),
            borderRadius: BorderRadius.all(Radius.circular(2))),
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        title: Text('MyApp'),
      ),*/
      backgroundColor: Color(0xfff1f1f1),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: openSearchCountriesButton,
        label: Text(
          'Countries List',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        icon: Icon(
          Icons.flag_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[700],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[700],
        notchMargin: 6.0,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(
            side: BorderSide(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : _countryList != null && _countryList.isNotEmpty
                ? ListView.builder(
                    padding: const EdgeInsets.only(
                        bottom: kFloatingActionButtonMargin + 48),
                    itemCount: _countryList.length,
                    itemBuilder: (context, index) {
                      if (_countryList[index] != null) {
                        return _countryData(_countryList[index]);
                      } else {
                        return SizedBox.shrink();
                      }
                    },
                  )
                : Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                      side: BorderSide(color: Colors.white70, width: 1),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        padding: const EdgeInsets.only(
                            bottom: kFloatingActionButtonMargin + 48),
                        children: [
                          Text(
"North America is a continent entirely within the Northern Hemisphere and almost all within the Western Hemisphere. It can also be described as a northern subcontinent of the Americas. It is bordered to the north by the Arctic Ocean, to the east by the Atlantic Ocean, to the southeast by South America and the Caribbean Sea, and to the west and south by the Pacific Ocean.",                            textAlign: TextAlign.justify,
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
"North America covers an area of about 24,709,000 square kilometers (9,540,000 square miles), about 16.5% of the Earth's land area and about 4.8% of its total surface. North America is the third-largest continent by area, following Asia and Africa, and the fourth by population after Asia, Africa, and Europe. In 2013, its population was estimated at nearly 579 million people in 23 independent states, or about 7.5% of the world's population, if nearby islands (most notably around the Caribbean) are included.",                            textAlign: TextAlign.justify,
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
