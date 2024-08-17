import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: "TExt",
        hintStyle: TextStyle(color: kprimarycolor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(color: kprimarycolor),
      ),
    );
  }

  OutlineInputBorder BuildBorder({color = Colors.white}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: color),
    );
  }
}
