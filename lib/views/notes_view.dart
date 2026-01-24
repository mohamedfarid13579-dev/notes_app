import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_button_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) {
            return AddNotesButtonSheet();
          });
        },
        backgroundColor: const Color.fromARGB(255, 147, 147, 147),
        foregroundColor: Colors.white,
        elevation: 6,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),

      body: NotesViewBody(),
    );
  }
}
