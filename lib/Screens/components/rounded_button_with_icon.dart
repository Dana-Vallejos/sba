import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sba/constants.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function press;
  final Color color, textColor;
  const RoundedButtonWithIcon({
    Key? key,
    required this.text,
    required this.press,
    required this.icon,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.8,
      child: RaisedButton(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)),
        highlightColor: kLightLPrimaryColor,
        splashColor: Colors.white,
        onPressed: () {},
        color: kLightLPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.black,
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    ); //margin: const EdgeInsets.symmetric(vertical: 5),//width: size.width * 0.8,
  }
}
  // Widget build(BuildContext context) {
  //   Size size = MediaQuery.of(context).size;
  //   return TextButton.icon(
  //     style: TextButton.styleFrom(
  //       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 90),
  //       textStyle: TextStyle(color: Colors.white),
  //       backgroundColor: kLightLPrimaryColor,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(29),
  //       ),
  //     ),
  //     onPressed: () => {},
  //     icon: Icon(
  //       icon,
  //     ),
  //     label: Text(
  //       text,
  //       style: TextStyle(fontWeight: FontWeight.w700),
  //     ),
  //   ); //margin: const EdgeInsets.symmetric(vertical: 5),
  //      width: size.width * 0.8,
  // }
  //}






    //child: Center(
     // //  child: Ink(
        //  decoration: const ShapeDecoration(
          //  color: kPrimaryColor,
            //shape: CircleBorder(),
          //),
          //child: IconButton(
            //icon: const Icon(Icons.volume_up),
            //color: Colors.white,
            //onPressed: () {},
         // ),
      //  ),
    //  ),
    //);