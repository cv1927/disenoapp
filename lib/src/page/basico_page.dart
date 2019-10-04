import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              _bannerImage(),
              _titleContent(),
              _actions(context),
              _description(),
              _description(),
              _description(),
              _description(),
              _description(),
              _description(),
              _description(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bannerImage() {

    return Container(
      width: double.infinity,
      child: FadeInImage(
        height: 220.0,
        image: AssetImage('assets/images/bannerBasicPage.jpeg'),
        placeholder: AssetImage('assets/images/loading.gif'),
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _titleContent() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un puente',
                    style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox( height: 7.0,),
                  Text(
                    'Un lago en Alemania',
                    style: TextStyle(color: Colors.grey[400]),
                  )
                ],
              ),
            ),
            Icon( Icons.star, color: Colors.red, size: 30.0,),
            Text('41', style: TextStyle( fontSize: 20.0 ),),
          ],
        ),
      ),
    );

  }

  Widget _actions(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buttonsAction(context,Icons.call,'CALL'),
        _buttonsAction(context,Icons.near_me,'ROUTE'),
        _buttonsAction(context,Icons.share, 'SHARE')
      ],
    );

  }

  Widget _buttonsAction(BuildContext context,IconData icon, String text) {

    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, 'scroll');
      },
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.blue, size: 40.0,),
          SizedBox(width: 5.0,),
          Text( text, style: TextStyle(fontSize: 15.0,color: Colors.blue), )
        ],
      ),
    );

  }

  Widget _description() {

    return SafeArea(
      child: Container(

        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages',
          textAlign: TextAlign.justify,
        ),

      ),
    );

  }
}