import 'package:flutter/material.dart';

class VideoUrlDialogSection extends StatelessWidget {
  final TextEditingController controller;

  const VideoUrlDialogSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      title: const Text(
        "Enter Video URL",
        style: TextStyle(color: Colors.white),
      ),
      content: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          hintText: "https://example.com/video.mp4",
          hintStyle: TextStyle(color: Colors.white38),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel", style: TextStyle(color: Colors.white70)),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, controller.text),
          child: const Text("Load", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
