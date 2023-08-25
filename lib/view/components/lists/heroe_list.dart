import 'package:flutter/material.dart';
import 'package:hello_there/domain/data/hero_model.dart';
import 'package:hello_there/view/components/items/hero_item.dart';

class HeroeList extends StatelessWidget {
  final List<HeroModel> heroes;

  const HeroeList({super.key, required this.heroes});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: heroes.length,
          itemBuilder: (context, index) {
            return HeroItem(heroe: heroes[index]);
          }),
    );
  }
}
