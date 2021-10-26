import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          text1,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          text2,
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
