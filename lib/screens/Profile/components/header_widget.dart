import 'package:flutter/material.dart';
import 'package:pokedex/contants.dart';
import 'package:pokedex/models/pokemon_model.dart';

Widget buildHeaderProfile(BuildContext context, Pokemon pokemon) {
  return Container(
    margin: EdgeInsets.only(top: ConstPadding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Hero(
          tag: '${pokemon.id}',
          child: Image.asset(
            pokemon.image,
            width: 150,
            fit: BoxFit.contain,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '#00${pokemon.number}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              pokemon.name,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
          ],
        )
      ],
    ),
  );
}
