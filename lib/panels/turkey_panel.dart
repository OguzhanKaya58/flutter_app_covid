import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_covid/commens/profile_info_big_card.dart';

class TurkeyPanel extends StatelessWidget {
  final List turkeyData;

  const TurkeyPanel({Key key, this.turkeyData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        children: [
          TableRow(
            children: [
              ProfileInfoBigCard(
                firstText: "Vaka Sayısı",
                secondText: turkeyData[7]['todayCases'].toString(),
                icon: Image.asset(
                  "assets/icons/turkey.png",
                  width: 20,
                ),
              ),
              ProfileInfoBigCard(
                firstText: "Kurtarılan Kisi",
                secondText: turkeyData[7]['todayRecovered'].toString(),
                icon: Image.asset(
                  "assets/icons/turkey.png",
                  width: 20,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              ProfileInfoBigCard(
                firstText: "Vefat Eden",
                secondText: turkeyData[7]['todayDeaths'].toString(),
                icon: Image.asset(
                  "assets/icons/turkey.png",
                  width: 20,
                ),
              ),
              ProfileInfoBigCard(
                firstText: "Kritik Hasta",
                secondText: turkeyData[7]['critical'].toString(),
                icon: Image.asset(
                  "assets/icons/turkey.png",
                  width: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
