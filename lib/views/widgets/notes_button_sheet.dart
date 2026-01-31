import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custome_sheat_button.dart';
import 'package:notes_app/views/widgets/custome_text_field.dart';

class AddNotesButtonSheet extends StatelessWidget {
  const AddNotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ده مهم عشان لما الكيبورد يطلع
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(
            0xFF2F2F2F,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SizedBox(height: 32),
              CustomeTextField(
                hint: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomeTextField(
                hint: 'Content',
                maxLines: 5,
              ),
              SizedBox(
                height: 70,
              ),
              CustomeSheatbutton(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
