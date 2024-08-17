import 'package:flutter/material.dart';
import 'package:note_app/widgets/CustomTextField.dart';

// ignore: camel_case_types
class addNoteBottonSheet extends StatelessWidget {
  const addNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          Customtextfield(),
        ],
      ),
    );
  }
}
