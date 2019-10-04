import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(context)
        ],
      ),
    );
  }

  Widget _page1() {

    return Stack(
      children: <Widget>[
        _colorBackground(),
        _imageBackground(),
        _contentPage()
      ],
    );

  }

  Widget _colorBackground() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );

  }

  Widget _imageBackground() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _contentPage() {

    final styleText = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('11°', style: styleText,),
          Text('Miercoles', style: styleText,),
          Expanded(child: Container(),),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );

  }

  Widget _page2(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'button');
          },
        ),
      ),
    );

  }
}