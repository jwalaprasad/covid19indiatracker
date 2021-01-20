/* import 'package:covid_tracker_india/entities/StateEntities.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:convert';


class DistrictData extends StatelessWidget {
  final String districtse;
  DistrictData({Key key, this.districtse}) : super(key: key);
  

  Future<List<DistrictLevel>> fetchDistrict(http.Client client) async {
  final response =
      await client.get('https://api.covid19india.org/v2/state_district_wise.json');

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseDistrict, response.body);
}

List<DistrictLevel> parseDistrict(String responseBody) {
  final districtLevel = districtLevelFromJson(responseBody);
  return districtLevel.state;
}


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DistrictLevel>>(
        future: fetchDistrict(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? Satedata(dist: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
  }
}

class Satedata extends StatelessWidget {
  final List<DistrictLevel> dist;
  Satedata({Key key, this.dist}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: dist.length,itemBuilder: (context,index){
        return Card(
          color: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(dist[index].state,),
              Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Confirmed'),
                      Text(dist[index].confirmed+" +"+dist[index].deltaconfirmed),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Deaths'),
                      Text(dist[index].deaths+" +"+dist[index].deltadeaths),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Recovered'),
                      Text(dist[index].recovered+" +"+dist[index].deltarecovered),
                    ],
                  ),
                ],
              )
            ],
          ),
        );
      });

  }
}


*/