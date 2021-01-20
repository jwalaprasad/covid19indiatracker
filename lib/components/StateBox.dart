import 'package:covid_tracker_india/entities/StateEntities.dart';
import 'package:flutter/material.dart';

class StateBox extends StatelessWidget {
  StateBox({
    Key key,
    this.sate,
    this.index
  }) : super(key: key);

  final Statewise sate;
  final int index;
  @override
  Widget build(BuildContext context) {
    String active = (int.parse(sate.confirmed) - int.parse(sate.recovered) - int.parse(sate.deaths)).toString();
    return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: oddoreven(index),
            elevation: 20,
            shadowColor: Colors.white24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  sate.state,
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
                        //     // top: BorderSide(width: 1.0, color: Colors.white),
                        //     right: BorderSide(width: 1.0, color: Colors.white),
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
                        //     // top: BorderSide(width: 1.0, color: Colors.white),
                        //     right: BorderSide(width: 1.0, color: Colors.white),
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
                        //     // top: BorderSide(width: 1.0, color: Colors.white),
                        //     right: BorderSide(width: 1.0, color: Colors.white),
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
                        decoration: BoxDecoration(
                          border: Border(
                            // top: BorderSide(width: 1.0, color: Colors.white),
                            // left: BorderSide(width: 1.0, color: Colors.white),
                          ),
                        ),
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
                            SizedBox(height: 20,),
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
          );
  }
}

Color oddoreven(int a) {
  if (a % 2 == 0) {
    return Color(0xFF1b1b2f);
  } else {
    return Color(0xFF162447);
  }
}