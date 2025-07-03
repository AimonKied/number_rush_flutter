import 'package:flutter/material.dart';
import '../widgets/number_grid.dart';
import '../widgets/mode_switch_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool editMode = true; // Beispiel: Modus wechseln

  void toggleMode() {
    setState(() {
      editMode = !editMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Rush'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(child: NumberGrid(editMode: editMode)),
          ModeSwitchButton(editMode: editMode, onPressed: toggleMode),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
