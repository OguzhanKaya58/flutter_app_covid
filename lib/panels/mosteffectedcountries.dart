import 'package:flutter/material.dart';
import 'package:flutter_app_covid/pages/one_country.dart';

class MostAffectedPanel extends StatelessWidget {
  final List countryData;

  const MostAffectedPanel({Key key, this.countryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OneCountry(
                            country: countryData,
                            index: index,
                          )));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: <Widget>[
                  Image.network(
                    countryData[index]['countryInfo']['flag'],
                    height: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    countryData[index]['country'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Vefat Eden: ' + countryData[index]['deaths'].toString(),
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
