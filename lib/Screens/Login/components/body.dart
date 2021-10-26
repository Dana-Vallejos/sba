import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sba/Screens/Login/components/background.dart';
import 'package:sba/Screens/OptionCustomer/option_customer_screen.dart';
import 'package:sba/Screens/Signup/signup_screen.dart';
import 'package:sba/Screens/components/already_have_an_account_check.dart';
import 'package:sba/Screens/components/rounded_button.dart';
import 'package:sba/Screens/components/rounded_input_field.dart';
import 'package:sba/Screens/components/rounded_passsword_field.dart';
import 'package:sba/Screens/components/text_field_container.dart';
import 'package:sba/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Iniciar sesión",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              "assets/images/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              icon: Icons.email,
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Iniciar sesión",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            //Sized
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(
                    color: kDarkPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OptionCustomer(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
