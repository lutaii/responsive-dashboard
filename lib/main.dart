import 'package:flutter/material.dart';
import 'package:responsive_dashboard/presentation/panel/panel_widget.dart';
import 'package:responsive_dashboard/theme/app_colors.dart';
import 'package:responsive_dashboard/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.define(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.background,
        child: const Center(
          child: PanelWidget(),
        ),
      ),
    );
  }
}
