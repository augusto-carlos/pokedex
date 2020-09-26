import 'package:flutter/material.dart';
import 'package:pokedex/contants.dart';
import 'package:pokedex/models/pokemon_model.dart';

class AboutTab extends StatelessWidget {
  Pokemon pokemon;
  AboutTab(this.pokemon);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: ConstPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildDescription(
                  'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illum architecto praesentium animi ab assumenda numquam qui reiciendis nemo, iusto eveniet?'),
              buildTitle('Pokédex Data', pokemon.color),
              buildInfo('ID', pokemon.id),
              buildInfo('Name', pokemon.name),
              buildInfo('Number', pokemon.number),
            ],
          ),
        ));
  }

  Widget buildInfo(String label, dynamic info) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: ConstPadding / 4),
          width: 100,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          info.toString(),
        )
      ],
    );
  }

  Widget buildTitle(String title, Color color) => Padding(
        padding: const EdgeInsets.symmetric(vertical: ConstPadding / 2),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: color,
          ),
        ),
      );

  Widget buildDescription(String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ConstPadding / 2),
      child: Text(description),
    );
  }
}
