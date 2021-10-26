import 'package:flutter/material.dart';
import 'package:sba/constants.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);
  @override
  State<DropDownButton> createState() => _DropDownButton();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DropDownButton extends State<DropDownButton> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
