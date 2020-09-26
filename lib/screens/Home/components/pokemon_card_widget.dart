import 'package:flutter/material.dart';
import 'package:pokedex/contants.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/screens/Profile/profile_screen.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({Key key, this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(pokemon),
        ),
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            height: 120,
            width: size.width,
            margin: EdgeInsets.symmetric(vertical: ConstPadding / 3),
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment(1.0, -1.0),
                image: AssetImage('assets/patterns/pokeball.png'),
                fit: BoxFit.contain,
              ),
              color: pokemon.color,
              borderRadius: BorderRadius.circular(ConstPadding / 4),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 8),
                  blurRadius: 8,
                  color: Colors.grey.withAlpha(100),
                  spreadRadius: -5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(ConstPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '#${pokemon.number}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    pokemon.name,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -5,
            right: 4,
            child: Hero(
              tag: '${pokemon.id}',
              child: Image.asset(
                pokemon.image,
                width: 120,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
