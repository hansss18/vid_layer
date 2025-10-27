import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vid_layer/app_theme.dart';
import 'package:vid_layer/views/screens/home_screen.dart';

void main() {
  runApp(
    ProviderScope(retry: (retryCount, error) => null, child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.lightTheme(context), home: HomeScreen());
  }
}
