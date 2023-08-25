// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavbarBottom extends StatefulWidget {
  late int currentPage;
  final PageController controller;

  NavbarBottom(
      {super.key, required this.currentPage, required this.controller});

  @override
  State<NavbarBottom> createState() => _NavbarBottomState();
}

class _NavbarBottomState extends State<NavbarBottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentPage,
      onTap: (index) {
        setState(() {
          widget.currentPage = index;
        });
        widget.controller.jumpToPage(index);
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Heroes'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Villanos'),
      ],
    );
  }
}
