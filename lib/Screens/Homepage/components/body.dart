import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sba/constants.dart';

import 'bottom_nav_bar.dart';
import 'categories.dart';
import 'popular_specialty.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: const BoxDecoration(color: kPrimaryLightColor),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    "¡Hola Dana!",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "¿Necesitas ayuda?",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Ingrese su distrito",
                        icon: SvgPicture.asset(
                          "assets/icons/loupe.svg",
                          height: size.height * 0.025,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Categories(),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        PopularSpecialty(),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        SectionTitle(
                          text: "Mejores Especialistas",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
