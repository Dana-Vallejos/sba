import 'package:flutter/material.dart';
import 'package:sba/Screens/Homepage/components/body.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
