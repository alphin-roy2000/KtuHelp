import 'package:Attendence_App/attenancecalculator.dart';
import 'package:Attendence_App/pages/AttendencePage.dart';
import 'package:flutter/material.dart';
import 'package:Attendence_App/val.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AttendanceHome extends StatefulWidget {
  final String sem;
  final String batch;
  AttendanceHome({this.sem, this.batch});
  @override
  _AttendanceHomeState createState() => _AttendanceHomeState();
}

class _AttendanceHomeState extends State<AttendanceHome> {
  int _percentage = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                height: 30,
              ),
              Row(children: <Widget>[
                Container(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                        )),
                    onPressed: () {
                      print("back navigation");
                    },
                  ),
                ),
                Text("     Attendance", style: TextStyle(fontSize: 23))
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 90,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 0),
                            child: GestureDetector(
                                child: Text("${widget.sem}",
                                    style: TextStyle(
                                        fontSize: 80, fontFamily: "Signatra"))),
                          ),
                          Text(
                            " ${widget.batch}",
                            style:
                                TextStyle(fontSize: 30, fontFamily: "Signatra"),
                          ),
                          Container(width: 30),
                        ]),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: new CircularPercentIndicator(
                        radius: 110,
                        lineWidth: 7.0,
                        percent: _percentage / 100,
                        center: new Text(
                          "$_percentage" + "%",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        progressColor: Colors.blueAccent,
                      ),
                    ),
                  )
                ],
              ),
              Container(height: 30),
              Divider(
                height: 10,
                thickness: 0.5,
                color: Colors.white.withOpacity(0.3),
                // indent: 32,
                // endIndent: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.blue,
                              width: 3,
                              style: BorderStyle.solid),
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.white10,
                      child: Container(
                        // color: Colors.white,
                        width: 150,

                        child: Row(children: <Widget>[
                          Icon(Icons.date_range),
                          Text("  Check Dates", style: TextStyle(fontSize: 20))
                        ]),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                AttendancePage()));
                      },
                    ),
                  ),
                ],
              ),
              Divider(
                height: 10,
                thickness: 0.5,
                color: Colors.white.withOpacity(0.3),
                // indent: 32,
                // endIndent: 32,
              ),
            ])),
      ),
    );
  }
}
