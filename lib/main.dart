import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Paginas
import 'package:disenos_app/src/page/basico_page.dart';
import 'package:disenos_app/src/page/scroll_page.dart';
import 'package:disenos_app/src/page/button_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basico',
      routes: {
        'basico'  : (BuildContext context) => BasicoPage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'button'  : (BuildContext context) => ButtonPage()
      },
    );
  }
}