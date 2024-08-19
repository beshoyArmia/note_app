import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(
      {super.key, required this.hint, required this.maxlines, this.onSaved});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {  
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field Is Required";
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText: hint,
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
