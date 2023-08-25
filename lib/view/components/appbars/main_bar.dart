import 'package:flutter/material.dart';

class MainBar extends StatefulWidget {
  final String title;
  const MainBar({super.key, required this.title});

  @override
  State<MainBar> createState() => _MainBarState();
}

class _MainBarState extends State<MainBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
    );
  }
}
