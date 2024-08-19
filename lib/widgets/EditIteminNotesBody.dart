import 'package:flutter/material.dart';
import 'package:note_app/widgets/CustomTextField.dart';
import 'package:note_app/widgets/customAppBar.dart';

class EditIteminNotesBody extends StatelessWidget {
  const EditIteminNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.done,
            title: "Edit Note",
          ),
          SizedBox(
            height: 30,
          ),
          Customtextfield(hint: "title", maxlines: 1),
          SizedBox(
            height: 16,
          ),
          Customtextfield(hint: "Content", maxlines: 5),
        ],
      ),
    );
  }
}
