import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kprimarycolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
