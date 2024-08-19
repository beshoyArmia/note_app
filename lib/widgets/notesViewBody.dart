import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:note_app/widgets/customAppBar.dart';
import 'package:note_app/widgets/noteListview.dart';

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
          CustomAppBar(
            icon: Icons.search,
            title: "Notes",
          ),
          Expanded(
            child: notesListview(),
          ),
        ],
      ),
    );
  }
}
