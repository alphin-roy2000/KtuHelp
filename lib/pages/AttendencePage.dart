import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => new _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  DateTime _fromDate = DateTime.now();
  DateTime now = DateTime.now();

  int _percentage = 100;

  Future<void> _showDatePicker() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _fromDate,
      firstDate: DateTime(2015, 1),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _fromDate) {
      setState(() {
        _fromDate = picked;
      });
    }
  }

  String get _labelDate {
    return DateFormat('dd-MM-yyyy').format(_fromDate);
  }

  String get _labelday {
    return DateFormat('EEEE').format(_fromDate);
  }

  _selectedDate() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            _labelday,
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontFamily: "Signatra"),
          ),
          Text(
            _labelDate,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "Led_Real",
                fontWeight: FontWeight.w600),
          ),
        ]);
  }

  // _selectedDate() {
  //   setState(() {
  //     _selected = new DateFormat('EEEE dd-MM-yyyy').format(selected);
  //   });
  //   return Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text(
  //           new DateFormat('EEEE').format(selected),
  //           style: TextStyle(
  //               color: Colors.white, fontSize: 40, fontFamily: "Signatra"),
  //         ),
  //         Text(
  //           new DateFormat('dd-MM-yyyy').format(selected),
  //           style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 30,
  //               fontFamily: "Led_Real",
  //               fontWeight: FontWeight.w600),
  //         ),
  //       ]);
  // }

  // _initialDate() {
  //   setState(() {
  //     _selected = DateFormat('EEEE dd-MM-yyyy').format(now);
  //   });
  //   return Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text(
  //           new DateFormat('EEEE').format(now),
  //           style: TextStyle(
  //               color: Colors.white, fontSize: 40, fontFamily: "Signatra"),
  //         ),
  //         Text(
  //           new DateFormat('dd-MM-yyyy').format(now),
  //           style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 30,
  //               fontFamily: "Led_Real",
  //               fontWeight: FontWeight.w600),
  //         ),
  //       ]);
  // }

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
                    Navigator.pop(context);
                  },
                ),
              ),
              Text("     Datewise Attendance", style: TextStyle(fontSize: 23))
            ]),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      child: GestureDetector(
                        child: _selectedDate(),
                        onTap: () => _showDatePicker(),
                      ),
                    ),
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
                      width: 130,

                      child: Row(children: <Widget>[
                        Icon(Icons.add),
                        Text(" Extra Class", style: TextStyle(fontSize: 20))
                      ]),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
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
                      width: 55,

                      child: Row(children: <Widget>[
                        Text("Reset", style: TextStyle(fontSize: 20))
                      ]),
                    ),
                    onPressed: () {},
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
          ],
        )),
      ),
    );
  }
}
