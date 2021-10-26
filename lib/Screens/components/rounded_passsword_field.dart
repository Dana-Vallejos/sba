import 'package:flutter/material.dart';
import 'package:sba/Screens/components/text_field_container.dart';
import 'package:sba/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Contraseña",
          icon: Icon(
            Icons.lock,
            color: kDarkPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kDarkPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
