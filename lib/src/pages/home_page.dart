import 'dart:math';

import 'package:flutter/material.dart';

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
          boxShadow: [
            new BoxShadow(
              color: Colors.red[300],
              offset: new Offset(1.0, 1.0),
            )
          ],
          gradient: LinearGradient(
              begin: FractionalOffset(0, 0.2),
              end: FractionalOffset(0, 0.4),
              colors: <Color>[
                Colors.white,
                Colors.white54,
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
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
              context, 'Pagar Admon', Icons.monetization_on, Colors.green[300]),
          _bottonCategory(
              context, 'Reservas', Icons.list, Colors.deepOrangeAccent),
        ]),
        TableRow(children: [
          _bottonCategory(
              context, 'Reportar incidente', Icons.error, Colors.pink),
          _bottonCategory(
              context, 'Comunicados admon', Icons.radio, Colors.purple),
        ]),
        TableRow(children: [
          _bottonCategory(
              context, 'Buzón de sugerencias', Icons.error, Colors.pink),
          _bottonCategory(
              context, 'Visita/Encomienda', Icons.radio, Colors.purple),
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
              title: Text('notificaciones'),
              icon: Icon(Icons.notification_important)),
          BottomNavigationBarItem(
              title: Text('otro'), icon: Icon(Icons.bubble_chart)),
          BottomNavigationBarItem(
              title: Text('otro'), icon: Icon(Icons.supervised_user_circle))
        ]));
  }

  Widget _background() {
    final boxColor1 = Transform.rotate(
      angle: -pi / 3.0,
      child: Container(
        height: 800.0,
        width: 700.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color.fromRGBO(255, 80, 80, 9.0),
            Colors.white,
          ]),
        ),
      ),
    );

    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.7, 0),
              end: FractionalOffset(0, 0.7),
              colors: <Color>[
            Colors.white,
            Colors.white38,
          ])),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(top: -380, left: 70, child: boxColor1),
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
              '¿Qué deseas realizar?',
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
