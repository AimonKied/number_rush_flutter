import 'package:flutter/material.dart';
import 'number_tile.dart';

class NumberGrid extends StatelessWidget {
  final bool editMode;
  static const int gridSize = 8;

  const NumberGrid({super.key, required this.editMode});

  @override
  Widget build(BuildContext context) {
    // Zahlen generieren, später durch Werte aus Logik ersetzen
    final numbers = List.generate(gridSize * gridSize, (_) => 1);

    // Größe einer einzelnen Kachel
    const double tileSize = 40.0;
    const double spacing = 4.0;

    // Gesamtgröße des quadratischen Spielfelds
    final double gridWidth = gridSize * tileSize + (gridSize - 1) * spacing;

    return Center(
      child: Container(
        width: gridWidth + 20, // 10px Padding außen herum
        height: gridWidth + 20,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[500],
          borderRadius: BorderRadius.circular(12),
        ),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(), // Kein Scrollen
          itemCount: numbers.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridSize,
            crossAxisSpacing: spacing,
            mainAxisSpacing: spacing,
            childAspectRatio: 1.0, // Quadrat
          ),
          itemBuilder: (context, index) {
            return NumberTile(
              number: numbers[index],
              editMode: editMode,
              onTap: () {
                print('Tile $index gedrückt');
              },
            );
          },
        ),
      ),
    );
  }
}
