import 'package:flutter/material.dart';
import 'package:flutter_app_covid/pages/one_country.dart';
import 'package:flutter_app_covid/pages/search.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List countryData;

  fetchCountryData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries');
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: Search(countryData));
            },
          )
        ],
        title: Text('Ülke Istatistikleri'),
      ),
      body: countryData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => OneCountry(
                          country: countryData,
                          index: index,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: Container(
                      height: 110,
                      margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  countryData[index]['country'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Image.network(
                                  countryData[index]['countryInfo']['flag'],
                                  height: 50,
                                  width: 60,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(top: 22),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'ONAYLANMIS: ' +
                                      countryData[index]['cases'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                Text(
                                  'AKTIF: ' +
                                      countryData[index]['active'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Text(
                                  'KURTARILDI: ' +
                                      countryData[index]['recovered']
                                          .toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                                Text(
                                  'VEFAT EDEN: ' +
                                      countryData[index]['deaths'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.grey[100]
                                          : Colors.grey[900]),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: countryData == null ? 0 : countryData.length,
            ),
    );
  }
}
