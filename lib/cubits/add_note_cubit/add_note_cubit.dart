import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constance.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  void addNote(NotesModel note) {
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      emit(AddNoteSucsess());
      notesBox.add(note);
    } catch (e) {
      AddNoteFailue(e.toString());
    }
  }
}
