import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sba/Screens/OptionCustomer/components/clipper.dart';
import 'package:sba/Screens/Specialty/components/background.dart';
import 'package:sba/Screens/Welcome2/welcom2_screen.dart';
import 'package:sba/Screens/components/rounded_button.dart';
import 'package:sba/Screens/components/rounded_button_with_icon.dart';
import 'package:sba/constants.dart';

class Body extends StatelessWidget {
  @override
  const Body({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kPrimaryLightColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/images/Yuppies - Bust (1).svg",
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.center,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Registro",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Seleccione sus especialidades",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButtonWithIcon(
              text: "Pintura",
              icon: Icons.format_paint_outlined,
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Desinfección",
              icon: Icons.clean_hands_outlined,
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Electricista",
              icon: Icons.lightbulb_outline,
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Cerrajería",
              icon: Icons.vpn_key_outlined,
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Instalaciones",
              icon: Icons.build_circle_outlined,
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Albañilería",
              icon: Icons.wallet_giftcard, //falta
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Limpieza",
              icon: Icons.cleaning_services_outlined,
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Gasfitería",
              icon: Icons.water_outlined,
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Carpintería",
              icon: Icons.carpenter_outlined,
              press: () {},
            ),
            RoundedButtonWithIcon(
              text: "Electrodomésticos",
              icon: Icons.home_work_outlined,
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "Regístrate",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Welcome2Screen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}
