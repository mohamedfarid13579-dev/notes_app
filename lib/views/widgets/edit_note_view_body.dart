import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_app_bar.dart';
import 'package:notes_app/views/widgets/custome_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomeAppBar(
            title: 'Edit Notes',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomeTextField(hint: "Tittle"),
          SizedBox(height: 16),
          CustomeTextField(
            hint: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
