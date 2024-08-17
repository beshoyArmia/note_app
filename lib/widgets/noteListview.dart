import 'package:flutter/material.dart';
import 'package:note_app/widgets/CustomNoteItem.dart';

class notesListview extends StatelessWidget {
  const notesListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CustomNoteItem(),
          );
        },
      ),
    );
  }
}
