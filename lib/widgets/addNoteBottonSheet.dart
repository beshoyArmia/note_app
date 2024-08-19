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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Customtextfield(
            onSaved: (p0) {
              title = p0;
            },
            hint: "text",
            maxlines: 1,
          ),
          const SizedBox(
            height: 32,
          ),
          Customtextfield(
            onSaved: (p0) {
              subtitle = p0;
            },
            hint: "text",
            maxlines: 6,
          ),
          const SizedBox(
            height: 80,
          ),
          Custombutton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;

                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
