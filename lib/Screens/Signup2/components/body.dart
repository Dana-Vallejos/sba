import 'package:flutter/material.dart';
import 'package:sba/Screens/Login/login_screen.dart';
import 'package:sba/Screens/Signup2/components/background.dart';
import 'package:sba/Screens/Specialty/specialty_screen.dart';
import 'package:sba/Screens/components/already_have_an_account_check.dart';
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
            //DropDownButton(),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Continuar",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SpecialtyScreen(),
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
          ],
        ),
      ),
    );
  }
}
