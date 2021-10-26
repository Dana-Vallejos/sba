import 'package:flutter/material.dart';
import 'package:sba/Screens/Login/login_screen.dart';
import 'package:sba/Screens/Signup/components/background.dart';
import 'package:sba/Screens/Signup/components/or_divider.dart';
import 'package:sba/Screens/Signup/components/social_icon.dart';
import 'package:sba/Screens/Signup2/singup2_screen.dart';
import 'package:sba/Screens/components/already_have_an_account_check.dart';
import 'package:sba/Screens/components/dropdown_button.dart';
import 'package:sba/Screens/components/rounded_button.dart';
import 'package:sba/Screens/components/rounded_input_field.dart';
import 'package:sba/Screens/components/rounded_passsword_field.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Registro",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              icon: Icons.person,
              hintText: "Nombre",
              onChanged: (value) {},
            ),
            RoundedInputField(
              icon: Icons.email,
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              icon: Icons.phone,
              hintText: "Teléfono",
              onChanged: (value) {},
            ),
            RoundedInputField(
              icon: Icons.map,
              hintText: "Distrito",
              onChanged: (value) {},
            ),
            // DropDownButton(),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Regístrate",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp2Screen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-mas.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
