import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sba/Screens/Signup/signup_screen.dart';
import 'package:sba/Screens/Signup2/singup2_screen.dart';
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
            "¿Qué rol desea en la aplicación?",
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          SvgPicture.asset("assets/images/Options.svg",
              height: size.height * 0.55),
          const SizedBox(height: 24),
          //buildLoginButton(context),
          RoundedButton(
            text: "Contratar un servicio",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
          ),
          //buildRegisterButton(context),
          RoundedButton(
            text: "Ofrecer un servicio",
            color: kPrimaryColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp2Screen(),
                  ));
            },
          ),
        ],
      ),
    ));
  }
}
