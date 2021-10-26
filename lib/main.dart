import 'package:flutter/material.dart';
import 'package:sba/Screens/Welcome/welcome_screen.dart';
import 'package:sba/constants.dart';
import 'Screens/OptionCustomer/option_customer_screen.dart';
import 'sba_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData theme = SbaTheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SBA',
      theme: theme,
      home: WelcomeScreen(),
    );
  }
}
