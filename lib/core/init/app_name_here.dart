import 'package:flutter/material.dart';

import '../base/view/demo_main_page.dart';
import '../base/view/demo_second_page.dart';
import '../theme/app_theme.dart';

///* MATERIAL APP STATE
class AppNameHere extends StatelessWidget {
  ///
  AppNameHere({Key? key}) : super(key: key);

  //? This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      //* Flutter team published navigation 2.0,
      //* may you would use it this istead
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => DemoHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => DemoSecondPage(),
        //* You can use this routes with onTap like this :
        //? " => Navigator.pushNamed(context, '/second') "
      },
    );
  }
}
