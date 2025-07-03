import 'package:flutter/material.dart';

class ModeSwitchButton extends StatelessWidget {
  final bool editMode;
  final VoidCallback onPressed;

  const ModeSwitchButton({
    super.key,
    required this.editMode,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      onPressed: onPressed,
      icon: Icon(editMode ? Icons.brush : Icons.calculate),
      label: Text(editMode ? 'Editiermodus' : 'Rechenmodus'),
    );
  }
}
