import 'package:flutter/material.dart';
import 'package:hello_there/domain/data/hero_model.dart';
import 'package:hello_there/view/components/lists/heroe_list.dart';

class HeroesPage extends StatefulWidget {
  final String title;
  HeroesPage({super.key, required this.title});

  @override
  State<HeroesPage> createState() => _HeroesPageState();
}

class _HeroesPageState extends State<HeroesPage> {
  final List<HeroModel> heroes = [
    HeroModel(id: 1, name: "Batman", address: "Ciudad Gótica"),
    HeroModel(id: 2, name: "Superman", address: "Metrópolis"),
    HeroModel(id: 3, name: "Wonder Woman", address: "Themyscira"),
    HeroModel(id: 4, name: "Flash", address: "Central City"),
    HeroModel(id: 5, name: "Green Lantern", address: "Sector 2814"),
    HeroModel(id: 6, name: "Aquaman", address: "Atlantis"),
    HeroModel(id: 7, name: "Cyborg", address: "Star City"),
    HeroModel(id: 8, name: "Green Arrow", address: "Star City"),
    HeroModel(id: 9, name: "Martian Manhunter", address: "Mars"),
    HeroModel(id: 10, name: "Shazam", address: "Fawcett City"),
    HeroModel(id: 11, name: "Iron Man", address: "New York"),
    HeroModel(id: 12, name: "Captain America", address: "Brooklyn, New York"),
    HeroModel(id: 13, name: "Thor", address: "Asgard"),
    HeroModel(id: 14, name: "Hulk", address: "Dayton, Ohio"),
    HeroModel(id: 15, name: "Black Widow", address: "Stalingrad, Russia"),
    HeroModel(id: 16, name: "Hawkeye", address: "Waverly, Iowa"),
    HeroModel(
        id: 17, name: "Doctor Strange", address: "Bleecker Street, New York"),
    HeroModel(id: 18, name: "Black Panther", address: "Wakanda"),
    HeroModel(id: 19, name: "Scarlet Witch", address: "Wundagore Mountain"),
    HeroModel(id: 20, name: "Vision", address: "The Avengers' Mansion"),
    HeroModel(id: 21, name: "Spider-Man", address: "Queens, New York"),
    HeroModel(id: 22, name: "Wolverine", address: "Alberta, Canada"),
    HeroModel(id: 23, name: "Deadpool", address: "Regina, Saskatchewan"),
    HeroModel(id: 24, name: "Daredevil", address: "Hell's Kitchen, New York"),
    HeroModel(id: 25, name: "Luke Cage", address: "Harlem, New York"),
    HeroModel(
        id: 26, name: "Jessica Jones", address: "Hell's Kitchen, New York"),
    HeroModel(id: 27, name: "Punisher", address: "Queens, New York"),
    HeroModel(id: 28, name: "Doctor Doom", address: "Latveria"),
    HeroModel(id: 29, name: "Magneto", address: "Genosha"),
    HeroModel(id: 30, name: "Loki", address: "Asgard"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*Column(
              children: heroes.map((item) => Text(item)).toList(),
            ),*/
        HeroeList(heroes: heroes),
      ],
    );
  }
}
