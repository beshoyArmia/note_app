import 'package:flutter/material.dart';
import 'package:note_app/widgets/CustomNoteItem.dart';
import 'package:note_app/widgets/customAppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          CustomNoteItem(),
        ],
      ),
    );
  }
}
