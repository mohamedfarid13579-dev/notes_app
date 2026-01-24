import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 34, bottom: 34, left: 16),
      decoration: BoxDecoration(
        color: Color(0XFFFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: Text(
                "Flutter Tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "Build your career with us",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withValues(alpha: .5),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "May 21 , 2026",
              style: TextStyle(
                color: Colors.black.withValues(alpha: .5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
