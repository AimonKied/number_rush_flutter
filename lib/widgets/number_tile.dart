import 'package:flutter/material.dart';

class NumberTile extends StatelessWidget {
  final int number;
  final bool editMode;
  final VoidCallback onTap;

  const NumberTile({
    super.key,
    required this.number,
    required this.editMode,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1, // macht das Feld quadratisch
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: editMode ? Colors.white : Colors.grey[900],
          borderRadius: BorderRadius.zero, // keine Rundung
        ),
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            foregroundColor: editMode ? Colors.black : Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // eckig
            ),
          ),
          child: Center(
            // zentriert den Text vertikal & horizontal
            child: Text(
              '$number',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
