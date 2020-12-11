import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_covid/datasorce.dart';
import 'package:flutter_app_covid/pages/one_country.dart';


class Search extends SearchDelegate{

  final List countryList;

  Search(this.countryList);


  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      primaryColor: primaryBlack,
      brightness: DynamicTheme.of(context).brightness
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
   return [
     IconButton(icon: Icon(Icons.clear), onPressed: (){
       query='';

     })
   ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
      Navigator.pop(context);
    },);
  }

  @override
  Widget buildResults(BuildContext context) {
return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context)
  {
    final suggestionList
         =
           query.isEmpty?
           countryList:
           countryList.where((element) => element['country'].toString().toLowerCase().startsWith(query)).toList();

   return ListView.builder(
       itemCount: suggestionList.length,
       itemBuilder: (context,index){
     return GestureDetector(
       onTap: () {
         Navigator.of(context).push(MaterialPageRoute(
             builder: (context) => OneCountry(
               country: suggestionList,
               index: index,
             )));
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
                       suggestionList[index]['country'],
                       style: TextStyle(fontWeight: FontWeight.bold),
                     ),
                     Image.network(
                       suggestionList[index]['countryInfo']['flag'],
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
                               suggestionList[index]['cases'].toString(),
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.red),
                         ),
                         Text(
                           'AKTIF: ' +
                               suggestionList[index]['active'].toString(),
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.blue),
                         ),
                         Text(
                           'KURTARILDI: ' +
                               suggestionList[index]['recovered'].toString(),
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.green),
                         ),
                         Text(
                           'VEFAT EDEN: ' +
                               suggestionList[index]['deaths'].toString(),
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color:  Theme.of(context).brightness==Brightness.dark?Colors.grey[100]:Colors.grey[900]),
                         ),
                       ],
                     ),
                   ))
             ],
           ),
         ),
       ),
     );
   });
  }

}