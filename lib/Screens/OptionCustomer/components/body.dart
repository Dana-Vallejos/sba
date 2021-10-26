import 'package:flutter/material.dart';
import 'package:sba/Screens/OptionCustomer/components/background.dart';
import 'package:sba/Screens/OptionCustomer/components/clipper.dart';
import 'package:sba/Screens/Options/option_screen.dart';
import 'package:sba/Screens/components/rounded_button.dart';
import 'package:sba/Screens/OptionCustomer/components/splash_context.dart';
import 'package:sba/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/splash_context.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text1": "Contratar un servicio",
      "text2":
          "¿Tienes algún problema técnico \nen el hogar? Nosotros te ayudamos",
    },
    {
      "text1": "Ofrecer un servicio",
      "text2":
          "¿Quieres brindar un servicio técnico \ndel hogar? Nosotros te ayudamos",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 450,
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
                          "assets/images/Yuppies - Remote from Living Room.svg",
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
          Expanded(
            flex: 1,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                text1: splashData[index]['text1'] ?? '',
                text2: splashData[index]['text2'] ?? '',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
              ],
            ),
          ),
          RoundedButton(
            text: "Continuar",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OptionScreen(),
                ),
              );
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
