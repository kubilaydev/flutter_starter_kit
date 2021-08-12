import 'package:flutter/material.dart';

import 'mainpage_contants.dart';

///
class SignInAppBar extends StatelessWidget {
  ///
  const SignInAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: true,
        shape: appBarBorder,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).buttonColor,
          ),
        ),
        toolbarHeight: 60, // Don't show the leading button
        title: Text(
          'COUNT UP!',
          style: Theme.of(context).textTheme.subtitle1,
        ));
  }
}
