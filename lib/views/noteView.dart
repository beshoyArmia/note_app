import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/addNoteBottonSheet.dart';
import 'package:note_app/widgets/notesViewBody.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        focusColor: Colors.black12,
        backgroundColor: Colors.blueAccent,
        hoverColor: Colors.black,
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            context: context,
            builder: (context) {
              return const addNoteBottonSheet();
            },
          );
        },
        child: const Icon(FontAwesomeIcons.plus),
      ),
      body: const NotesViewBody(),
    );
  }
}
