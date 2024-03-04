import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text('Flutter Tips'),
              titleTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text('Build your career with tharwat samy'),
              ),
              subtitleTextStyle:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May 21, 2021',
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
