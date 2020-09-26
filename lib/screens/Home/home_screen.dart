import 'package:flutter/material.dart';
import 'package:pokedex/contants.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'components/input_search_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/pokemon_card_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            tooltip: 'generation',
            icon: SvgPicture.asset('assets/icons/generation.svg'),
            onPressed: () => null,
          ),
          IconButton(
            tooltip: 'sort',
            icon: SvgPicture.asset('assets/icons/sort.svg'),
            onPressed: () => null,
          ),
          IconButton(
            tooltip: 'filter',
            icon: SvgPicture.asset('assets/icons/filter.svg'),
            onPressed: () => null,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(0, -2.5),
            image: AssetImage('assets/patterns/pokeball-dark.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: ConstPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pokédex',
                style: Theme.of(context).textTheme.headline4.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF444444),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: ConstPadding / 2),
                child: Text(
                    'Search for Pokémon by name or using the\nNational Pokédex number.'),
              ),
              SearchInput(),
              Expanded(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: Pokemons.length,
                    itemBuilder: (context, index) {
                      return PokemonCard(pokemon: Pokemons[index]);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
