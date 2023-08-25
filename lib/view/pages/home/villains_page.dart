import 'package:flutter/material.dart';
import 'package:hello_there/domain/data/hero_model.dart';
import 'package:hello_there/view/components/lists/heroe_list.dart';

class VillainsPage extends StatefulWidget {
  final String title;
  VillainsPage({super.key, required this.title});

  @override
  State<VillainsPage> createState() => _VillainsPageState();
}

class _VillainsPageState extends State<VillainsPage> {
  final List<HeroModel> villains = [
    HeroModel(id: 31, name: "Joker", address: "Ciudad Gótica"),
    HeroModel(id: 32, name: "Lex Luthor", address: "Metrópolis"),
    HeroModel(id: 33, name: "Darkseid", address: "Apokolips"),
    HeroModel(id: 34, name: "Reverse Flash", address: "Central City"),
    HeroModel(id: 35, name: "Sinestro", address: "Qward"),
    HeroModel(id: 36, name: "Black Manta", address: "Atlantis"),
    HeroModel(id: 37, name: "Deathstroke", address: "Unknown"),
    HeroModel(id: 38, name: "Ra's al Ghul", address: "Nanda Parbat"),
    HeroModel(id: 39, name: "Two-Face", address: "Ciudad Gótica"),
    HeroModel(id: 40, name: "Harley Quinn", address: "Ciudad Gótica"),
    HeroModel(id: 41, name: "Thanos", address: "Titan"),
    HeroModel(id: 42, name: "Green Goblin", address: "New York"),
    HeroModel(id: 43, name: "Ultron", address: "Unknown"),
    HeroModel(id: 44, name: "Venom", address: "New York"),
    HeroModel(id: 45, name: "Kingpin", address: "Hell's Kitchen, New York"),
    HeroModel(id: 46, name: "Red Skull", address: "Germany"),
    HeroModel(id: 47, name: "Loki", address: "Asgard"),
    HeroModel(id: 48, name: "Hela", address: "Hel"),
    HeroModel(id: 49, name: "Mysterio", address: "New York"),
    HeroModel(id: 50, name: "Doctor Octopus", address: "New York"),
    HeroModel(id: 51, name: "Sandman", address: "New York"),
    HeroModel(id: 52, name: "Sabretooth", address: "Canada"),
    HeroModel(id: 53, name: "Carnage", address: "New York"),
    HeroModel(id: 54, name: "Galactus", address: "Taa"),
    HeroModel(id: 55, name: "Ronan the Accuser", address: "Hala"),
    HeroModel(id: 56, name: "Mandarin", address: "China"),
    HeroModel(id: 57, name: "Juggernaut", address: "Unknown"),
    HeroModel(id: 58, name: "Mystique", address: "Unknown"),
    HeroModel(id: 59, name: "Bullseye", address: "Hell's Kitchen, New York"),
    HeroModel(id: 60, name: "Penguin", address: "Ciudad Gótica"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*Column(
              children: heroes.map((item) => Text(item)).toList(),
            ),*/

        HeroeList(heroes: villains),
      ],
    );
  }
}
