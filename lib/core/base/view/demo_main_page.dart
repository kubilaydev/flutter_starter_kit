import 'package:flutter/material.dart';

import '../../components/main_constants.dart';
import '../../components/main_page/signin_appbar.dart';

///
class DemoHomePage extends StatefulWidget {
  ///
  DemoHomePage({
    Key? key,
  }) : super(key: key);

  ///

  @override
  _DemoHomePageState createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          // ITS IMPORTANT TO MAKE NEW WIDGETS FOR READABLE CODE as you know
          child: SignInAppBar()),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              /// YOU CAN USE YOUR MAIN CONST where Main_constant.dart file
              /// LIKE HERE ( arrow pointing down )
              padding: appNameMainEdge,

              child: Text(
                "OKEY OKEY! I'll count!",

                /// YOU CAN USE YOUR THEME settings where appTheme BY
                /// ' Theme.of(context).textTheme.headline1, '
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'add 1 more time!',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
