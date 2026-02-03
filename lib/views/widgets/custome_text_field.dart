import 'package:flutter/material.dart';
import 'package:notes_app/constance.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key,
    this.maxLines = 1,
    required this.hint,
    this.onSaved,
  });

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "feild is required";
        }
        return null;
      },
      cursorColor: kprimarycolor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: BuildBorder(),
        hintText: "Text Title",
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
