import 'package:flutter/material.dart';
import 'package:hello_there/view/components/appbars/navbar_bottom.dart';
import 'package:hello_there/view/pages/home/heroes_page.dart';
import 'package:hello_there/view/pages/home/villains_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  String title = "";

  final List<Widget> _pages = [
    HeroesPage(title: "Heroes"),
    VillainsPage(title: "Villanos")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          if (index == 0) {
            title = "heroes";
          } else {
            title = "Villanos";
          }

          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: NavbarBottom(
        controller: _pageController,
        currentPage: _currentIndex,
      ),
    );
  }
}
