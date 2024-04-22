import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit.dart';


import 'custom_app_bar.dart';
import 'note_item.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {

  @override
  void initState() {
   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  [
          SizedBox(
            height: 50,
          ),
          AppBar(
            title: Center(
              child: Text(
                'Notes',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
           
            
          ),
          //CustomAppBar(
          //  title: 'Notes',
          //  icon: FontAwesomeIcons.magnifyingGlass
         //    ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}