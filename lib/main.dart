import 'package:flutter/material.dart';
import 'package:flutter_musicplayer/core/configs/theme/app_theme.dart';
import 'package:flutter_musicplayer/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage()
    );
  }
}
