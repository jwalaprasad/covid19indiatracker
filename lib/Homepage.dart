import 'package:covid_tracker_india/components/StateBox.dart';
import 'package:covid_tracker_india/components/TotatBox.dart';
import 'package:covid_tracker_india/entities/StateEntities.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'dart:async';
//import 'dart:convert';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Covid-19 Tracker India'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: FutureBuilder<List<Statewise>>(
          future: fetchSates(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? Container(child: SateList(sate: snapshot.data))
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

class SateList extends StatelessWidget {
  final List<Statewise> sate;

  SateList({Key key, this.sate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int l = sate.length - 1;

    return ListView.builder(
        itemCount: l,
        itemBuilder: (context, index) {
          if (index == 0) {
            return TotalBox(sate: sate[index],);
          } else if (index >= 19) {
            index++;
          }

          return StateBox(index: index,sate: sate[index],);
        });
  }
}


Future<List<Statewise>> fetchSates(http.Client client) async {
  final response = await client.get('https://api.covid19india.org/data.json');

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseSates, response.body);
}

List<Statewise> parseSates(String responseBody) {
  final topLevel = lowLevelFromJson(responseBody);

  return topLevel.statewise;
}
