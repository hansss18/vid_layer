import 'package:flutter/material.dart';

class ColorPickerDialogSection extends StatefulWidget {
  final Color current;
  const ColorPickerDialogSection({super.key, required this.current});

  @override
  State<ColorPickerDialogSection> createState() =>
      _ColorPickerDialogSectionState();
}

class _ColorPickerDialogSectionState extends State<ColorPickerDialogSection> {
  late Color _color;

  @override
  void initState() {
    super.initState();
    _color = widget.current;
  }

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.white,
      Colors.black,
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.purple,
      Colors.orange,
      Colors.cyan,
      Colors.pinkAccent,
    ];

    return AlertDialog(
      backgroundColor: Colors.grey[900],
      title: const Text(
        "Select Text Color",
        style: TextStyle(color: Colors.white),
      ),
      content: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: colors.map((c) {
          final checkColor = c.computeLuminance() > 0.5
              ? Colors.black
              : Colors.white;

          return GestureDetector(
            onTap: () => setState(() => _color = c),
            child: CircleAvatar(
              backgroundColor: c,
              radius: 20,
              child: _color == c ? Icon(Icons.check, color: checkColor) : null,
            ),
          );
        }).toList(),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel", style: TextStyle(color: Colors.white70)),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, _color),
          child: const Text("Select", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
