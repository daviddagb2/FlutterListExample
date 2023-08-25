import 'package:flutter/material.dart';
import 'package:hello_there/domain/data/hero_model.dart';

class HeroItem extends StatelessWidget {
  final HeroModel heroe;

  const HeroItem({super.key, required this.heroe});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.person_2_rounded),
        title: Text("Heroe: ${heroe.name}"),
        subtitle: Text(heroe.address),
        isThreeLine: true,
        dense: true,
        trailing: const Icon(Icons.edit),
        onTap: () => _doAction(heroe, context),
      ),
    );
  }

  _doAction(HeroModel hero, context) {
    Navigator.pushNamed(context, '/details');
    /*
    AlertDialog alert = AlertDialog(
      title: Text("Hola ${hero.name} ke ase"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );*/
  }
}
