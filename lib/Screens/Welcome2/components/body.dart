import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sba/Screens/Homepage/homepage_screen.dart';
import 'package:sba/Screens/Login/login_screen.dart';
import 'package:sba/Screens/OptionCustomer/option_customer_screen.dart';
import 'package:sba/Screens/Welcome/components/background.dart';
import 'package:sba/Screens/components/rounded_button.dart';
import 'package:sba/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "¡Bienvenido a SBA!",
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 24),
          SvgPicture.asset("assets/images/welcome.svg",
              height: size.height * 0.55),
          const SizedBox(height: 24),
          Text(
            " Ahora eres parte de la comunidad SBA. \nNosotros te ayudaremos.",
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          RoundedButton(
            text: "Siguiente",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomepageScreen(),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
