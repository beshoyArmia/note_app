import 'package:flutter/material.dart';
import 'package:note_app/widgets/CustomTextField.dart';
import 'package:note_app/widgets/Custombutton.dart';

// ignore: camel_case_types
class addNoteBottonSheet extends StatelessWidget {
  const addNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Customtextfield(
              hint: "text",
              maxlines: 1,
            ),
            SizedBox(
              height: 32,
            ),
            Customtextfield(
              hint: "text",
              maxlines: 6,
            ),
            SizedBox(
              height: 80,
            ),
            Custombutton(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
