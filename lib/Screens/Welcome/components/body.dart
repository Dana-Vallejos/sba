import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          //buildLoginButton(context),
          RoundedButton(
            text: "Iniciar sesión",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
          //buildRegisterButton(context),
          RoundedButton(
            text: "Registrarse",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OptionCustomer(),
                  ));
            },
          ),
        ],
      ),
    ));
  }
}

//Widget buildLoginButton(BuildContext context) {
  //Size size = MediaQuery.of(context).size;
  //return SizedBox(
    //height: 55,
    //width: size.width * 0.8,
    //child: MaterialButton(
      //color: kPrimaryColor,
      //highlightColor: kPrimaryLightColor,
      //splashColor: Colors.white,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      //child: const Text(
        //'Iniciar sesión',
        //style: TextStyle(
          //color: Colors.white,
        //),
      //),
      //onPressed: () {
        //Navigator.push(
          //context,
          //MaterialPageRoute(
            //builder: (context) => LoginScreen(),
          //),
        //);
      //},
    //),
  //);
//}

//Widget buildRegisterButton(BuildContext context) {
  //Size size = MediaQuery.of(context).size;
  //return SizedBox(
    //height: 55,
    //width: size.width * 0.8,
    //child: MaterialButton(
      //color: kPrimaryColor,
      //highlightColor: kPrimaryLightColor,
      //splashColor: Colors.white,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      //child: const Text(
        //'Registrarse',
        //style: TextStyle(
          //color: Colors.white,
        //),
      //),
      //onPressed: () async {
        //  Provider.of<AppStateManager>(context, listen: false)
        //     .login('mockUsername', 'mockPassword');
      //},
    //),
  //);
//}
