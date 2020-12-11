import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_covid/commens/profile_info_big_card.dart';
import 'package:flutter_app_covid/commens/profile_info_card.dart';
import 'package:flutter_app_covid/styleguide/colors.dart';

class OneCountry extends StatelessWidget {
  final List country;
  final int index;

  const OneCountry({Key key, this.country, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(country[index]['country']),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Image.network(
                        country[index]['countryInfo']['flag'],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: country[index]['todayCases'].toString(),
                            secondText: "Bugün ki Vaka Sayısı",
                            icon: Icon(
                              Icons.description_outlined,
                              size: 25,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText:
                                country[index]['todayRecovered'].toString(),
                            secondText: "Bugün ki Kurtarılan Kişi",
                            icon: Icon(
                              Icons.favorite_border,
                              size: 25,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: country[index]['todayDeaths'].toString(),
                            secondText: "Bugün Vefat Eden Kişi",
                            icon: Image.asset(
                              "assets/icons/dead.png",
                              width: 25,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                              firstText: country[index]['critical'].toString(),
                              secondText: "Kritik Kişi Sayısı",
                              icon: Icon(
                                Icons.watch_later_outlined,
                                color: blueColor,
                              )),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: country[index]['tests'].toString(),
                            secondText: "Test Sayısı",
                            icon: Image.asset(
                              "assets/icons/injector.png",
                              width: 25,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                              firstText: country[index]['testsPerOneMillion'].toString(),
                              secondText: "Bir Milyon Başına Test",
                              icon: Image.asset(
                                "assets/icons/rate.png",
                                width: 25,
                                color: blueColor,
                              ),),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: screenHeight * (4 / 9) - 240 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ProfileInfoCard(
                    firstText: country[index]['countryInfo']['iso3'] != null ? country[index]['countryInfo']['iso3'] : "",
                    secondText: country[index]['continent'],
                  ),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  ProfileInfoCard(
                    firstText: country[index]['population'].toString(),
                    secondText: "Popülasyon",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
