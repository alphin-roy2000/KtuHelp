import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'GPA_page.dart';
// import 'about.dart';
// import 'home.dart';
// import 'resultanalyser.dart';
import 'val.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  int a = 0;
  int car = 0;
  List<double> te = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<double> ss = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<double> dom = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  static int r = 8, c = 6;
  var arr = List.generate(r, (i) => List(c), growable: false);
  void sub() {
    a = 0;
    for (var i = 0; i < 8; i++) {
      for (var j = 0; j < 6; j++) {
        a = a + 1;
        arr[i][j] = a;
      }
    }
    print(arr);
  }

  @override
  int kkkk = 0;
  int hhhh = 0;
  List<String> semester = ["S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8"];
  List<DropdownMenuItem<int>> semdrop = [];
  int semsel;
  void semdata() {
    semdrop = [];
    semdrop = semester
        .map((val) => DropdownMenuItem<int>(
              child: Text(val),
              value: semester.indexOf(val),
            ))
        .toList();
  }

  Widget semdropbutton() {
    semdata();
    return DropdownButton(
        iconEnabledColor: Colors.black,
        hint: Text(
          "Semester",
          style: TextStyle(color: Colors.black),
        ),
        items: semdrop,
        value: semsel,
        onChanged: (value) {
          setState(() {
            semsel = value;
            kkkk = kkkk + 1;
            print(semsel);
          });
        });
  }

  List<String> branch = ["CS", "CE", "EC", "EE", "ME", "IT"];
  List<DropdownMenuItem<int>> bradrop = [];
  int brasel;
  void bradata() {
    bradrop = [];
    bradrop = branch
        .map((k) => DropdownMenuItem<int>(
              child: Text(k),
              value: branch.indexOf(k),
            ))
        .toList();
  }

  Widget bradropbbutton() {
    bradata();
    return DropdownButton(
      items: bradrop,
      value: brasel,
      hint: Text(
        'Branch',
        style: TextStyle(color: Colors.black),
      ),
      onChanged: (value) {
        setState(() {
          brasel = value;
          hhhh = hhhh + 1;
          //s();
          print(brasel);
        });
      },
    );
  }
  /*void add(int i){
    setState(() {
      te[i]=((ss+1)/(ss+1))*100;
    });
  }
  void min(int i){
    setState(() {
      te[i]=(ss/(ss+1))*100;
    });
  }*/

  /*Widget plus(int i){
    return IconButton(icon: Icon( Icons.add), onPressed: add);
  }
   Widget minus(){
    return IconButton(icon: Icon( IconData(0xe15b,fontFamily:'MaterialIcons')), onPressed: min);
  }*/
  Widget s() {
    List<Widget> list = List<Widget>();
    List<Widget> lis = List<Widget>();
    setState(() {
      car = arr[semsel][brasel];
      print("carr is $car");
      switch (car) {
        case 13:
          d = s3cs;

          break;
        case 14:
          d = s3ce;

          break;
        case 15:
          d = s3ec;

          break;
        case 16:
          d = s3ee;

          break;
        case 17:
          d = s3me;

          break;
        case 18:
          d = s3it;

          break;
        case 19:
          d = s4cs;

          break;
        case 20:
          d = s4ce;

          break;
        case 21:
          d = s4ec;

          break;
        case 22:
          d = s4ee;

          break;
        case 23:
          d = s4me;

          break;
        case 24:
          d = s4it;

          break;
        case 25:
          d = s5cs;

          break;
        case 26:
          d = s5ce;

          break;
        case 27:
          d = s5ec;

          break;
        case 28:
          d = s5ee;

          break;
        case 29:
          d = s5me;

          break;
        case 30:
          d = s5it;

          break;
        case 31:
          d = s6cs;

          break;
        case 32:
          d = s6ce;

          break;
        case 33:
          d = s6ec;

          break;
        case 34:
          d = s6ee;

          break;
        case 35:
          d = s6me;

          break;
        case 36:
          d = s6it;

          break;
        case 37:
          d = s7cs;

          break;
        case 38:
          d = s7ce;

          break;
        case 39:
          d = s7ec;

          break;
        case 40:
          d = s7ee;

          break;
        case 41:
          d = s7me;

          break;
        case 42:
          d = s7it;

          break;
        case 43:
          d = s8cs;

          break;
        case 44:
          d = s8ce;
          break;
        case 45:
          d = s8ec;

          break;
        case 46:
          d = s8ee;

          break;
        case 47:
          d = s8me;

          break;
        case 48:
          d = s8it;
          break;
        default:
          d = s4cs;
      }
      print(d);
      for (var i = 0; i < d.length; i++) {
        list = [];
        list.add(Expanded(child: Text(d[i])));
        list.add(SizedBox(
          width: 50,
        ));
        list.add(Text(te[i].toStringAsFixed(2)));
        //list.add(SizedBox(width: 30,));
        list.add(IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              setState(() {
                ss[i] = ss[i] + 1;
                dom[i] = dom[i] + 1;
                te[i] = (ss[i] / dom[i]) * 100;
              });
            }));
        list.add(IconButton(
            icon: Icon(IconData(0xe15b, fontFamily: 'MaterialIcons')),
            onPressed: () {
              setState(() {
                ss[i] = ss[i];
                dom[i] = dom[i] + 1;
                te[i] = (ss[i] / dom[i]) * 100;
              });
            }));
        lis.add(Row(
          children: list,
        ));
      }
      lis.add(Center(
        child: FlatButton(
            onPressed: () {
              print("sfsdfsdf");
              for (i = 0; i < d.length; i++) {
                setState(() {
                  te[i] = 0;
                });
              }
            },
            child: Text("Reset")),
      ));
    });
    return Expanded(child: Container(child: Column(children: lis)));
  }

  Widget build(BuildContext context) {
    sub();
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance Calculator"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Home"),
              onTap: () {
                // 
              },
            ),
            ListTile(
              title: Text("GPA"),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> Myapp()));
              },
            ),
            ListTile(
              title: Text("result"),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> Result()));
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> About()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        //color: Colors.black,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[semdropbutton(), bradropbbutton()],
            ),
            Container(
              child: hhhh > 0 && kkkk > 0 ? s() : SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
