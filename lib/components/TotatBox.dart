import 'package:covid_tracker_india/entities/StateEntities.dart';
import 'package:flutter/material.dart';

class TotalBox extends StatelessWidget {
  TotalBox({
    Key key,
    this.sate
  }) : super(key:key);

  final Statewise sate;
  @override
  Widget build(BuildContext context) {
    String active = (int.parse(sate.confirmed)-int.parse(sate.deaths)-int.parse(sate.recovered)).toString();
    return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Total cases in india",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              // decoration: BoxDecoration(
                              //   border: Border(
                              //     top: BorderSide(
                              //         width: 1.0, color: Colors.white),
                              //     right: BorderSide(
                              //         width: 1.0, color: Colors.white),
                              //   ),
                              // ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Confirmed',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: <Widget>[
                                  //     Icon(
                                  //       Icons.arrow_upward,
                                  //       color: Colors.red,
                                  //     ),
                                  //     Text(
                                  //       sate.deltaconfirmed,
                                  //       style: TextStyle(
                                  //           color: Colors.red,
                                  //           fontWeight: FontWeight.bold),
                                  //     ),
                                  //   ],
                                  // ),
                                  Divider(),
                                  Text(
                                    sate.confirmed,
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              // decoration: BoxDecoration(
                              //   border: Border(
                              //     top: BorderSide(
                              //         width: 1.0, color: Colors.white),
                              //     right: BorderSide(
                              //         width: 1.0, color: Colors.white),
                              //   ),
                              // ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Active',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: <Widget>[
                                  //     Icon(
                                  //       Icons.arrow_upward,
                                  //       color: Colors.lightBlue,
                                  //     ),
                                  //     Text(
                                  //       sate.deltaconfirmed,
                                  //       style: TextStyle(
                                  //           color: Colors.lightBlue,
                                  //           fontWeight: FontWeight.bold),
                                  //     ),
                                  //   ],
                                  // ),
                                  Divider(),
                                  Text(
                                    active,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              // decoration: BoxDecoration(
                              //   border: Border(
                              //     top: BorderSide(
                              //         width: 1.0, color: Colors.white),
                              //     right: BorderSide(
                              //         width: 1.0, color: Colors.white),
                              //   ),
                              // ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Deaths',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: <Widget>[
                                  //     Icon(
                                  //       Icons.arrow_upward,
                                  //       color: Colors.red,
                                  //     ),
                                  //     Text(
                                  //       sate.deltadeaths,
                                  //       style: TextStyle(
                                  //           color: Colors.red,
                                  //           fontWeight: FontWeight.bold),
                                  //     ),
                                  //   ],
                                  // ),
                                  Divider(),
                                  Text(
                                    sate.deaths,
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              // decoration: BoxDecoration(
                              //   border: Border(
                              //     top: BorderSide(
                              //         width: 1.0, color: Colors.white),
                              //     left: BorderSide(
                              //         width: 1.0, color: Colors.white),
                              //   ),
                              // ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Recovered',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   children: <Widget>[
                                  //     Icon(
                                  //       Icons.arrow_upward,
                                  //       color: Colors.green,
                                  //     ),
                                  //     Text(
                                  //       sate.deltarecovered,
                                  //       style: TextStyle(
                                  //         color: Colors.green,
                                  //         fontWeight: FontWeight.bold,
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                  Divider(),
                                  Text(
                                    sate.recovered,
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "Statewise Data",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )
              ],
            );
  }
}