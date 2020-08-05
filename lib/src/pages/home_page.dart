import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mitribu/src/bloc/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final bloc = Provider.of(context);
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: <Widget>[
            _background(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _titles(),
                  _categories(context),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottonCategory(
      BuildContext context, String text, IconData icon, Color color) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color.fromRGBO(180, 70, 300, 9.0),
            Colors.white,
          ]),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(
            onTap: () {
              //Navigator.pushNamed(context, 'siguientePantalla');
            },
            child: CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(
                icon,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 7.0,
          )
        ],
      ),
    );
  }

  Widget _categories(BuildContext context) {
    return Table(
      children: <TableRow>[
        TableRow(children: [
          _bottonCategory(
              context, 'Pagar Admon', Icons.calendar_view_day, Colors.blue),
          _bottonCategory(context, 'Reserva zona común',
              Icons.calendar_view_day, Colors.blue),
        ]),
        TableRow(children: [
          _bottonCategory(context, 'Reportar incidente',
              Icons.calendar_view_day, Colors.blue),
          _bottonCategory(context, 'Anuncios administración',
              Icons.calendar_view_day, Colors.blue),
        ]),
      ],
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
        child: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text('Calendario'), icon: Icon(Icons.calendar_today)),
          BottomNavigationBarItem(
              title: Text('Calendario'), icon: Icon(Icons.bubble_chart)),
          BottomNavigationBarItem(
              title: Text('Calendario'),
              icon: Icon(Icons.supervised_user_circle))
        ]));
  }

  Widget _background() {
    final boxColor1 = Transform.rotate(
      angle: -pi / 4.0,
      child: Container(
        height: 550.0,
        width: 480.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70.0),
            gradient: LinearGradient(colors: <Color>[
              Colors.white,
              Color.fromRGBO(180, 70, 300, 9.0),
            ])),
      ),
    );

    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0, 0.4),
              end: FractionalOffset(0, 0.7),
              colors: <Color>[
            Color.fromRGBO(180, 70, 300, 9.0),
            Colors.white,
          ])),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(top: -180, right: 0, child: boxColor1),
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Selecciona una opción:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
