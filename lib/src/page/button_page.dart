import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

import 'dart:math';

class ButtonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backApp(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                _content(),
                _buttonRound()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }


  Widget _backApp() {

    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0,1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final boxRose = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );
    
    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -90.0,
          left: -50.0,
          child: boxRose,
        ),
      ],
    );
    
  }

  Widget _content() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify trasaction', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox( height: 10.0, ),
            Text('Classify this transaction into a particular category', style: TextStyle( color: Colors.white, fontSize: 18.0,)),
          ],
        ),

      ),
    );

  }

  Widget _bottomNavigationBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) )
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon( Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          ),
        ],
      ),
    );

  }

  Widget _buttonRound() {

    return Table(
      children: [
        TableRow(
          children: [
            _createButtonRound(
              Colors.blueAccent,
              Icons.dashboard,
              'General'
            ),
            _createButtonRound(
              Colors.purpleAccent,
              Icons.subway,
              'Transport'
            ),
          ]
        ),
        TableRow(
          children: [
            _createButtonRound(
              Colors.pinkAccent,
              Icons.shopping_cart,
              'Shopping'
            ),
            _createButtonRound(
              Colors.orangeAccent,
              Icons.account_balance_wallet,
              'Bills'
            ),
          ]
        ),
        TableRow(
          children: [
            _createButtonRound(
              Colors.lightBlueAccent,
              Icons.movie,
              'Entertaiment'
            ),
            _createButtonRound(
              Colors.greenAccent,
              Icons.fastfood,
              'Grocery'
            ),
          ]
        ),
      ],
    );

  }

  Widget _createButtonRound(Color colorButton,IconData icon,String textCard) {

    return ClipRect(
      child: BackdropFilter(
        filter: prefix0.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 150.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: colorButton,
                radius: 35.0,
                child: Icon( icon, color: Colors.white, size: 30.0,),
              ),
              Text(textCard, style: TextStyle(color: colorButton),),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
    );

  }
}