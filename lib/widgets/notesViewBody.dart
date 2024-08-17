import 'package:flutter/material.dart';
import 'package:note_app/widgets/customAppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: CustomAppBar(),
        ),
      ],
    );
  }
}
