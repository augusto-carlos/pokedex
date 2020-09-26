import 'package:flutter/material.dart';

class Pokemon {
  int id, number;
  String name, image;
  Color color;
  Pokemon({this.name, this.number, this.image, this.id, this.color});
}

List<Pokemon> Pokemons = [
  Pokemon(
    id: 1,
    name: 'Bulbasaur',
    number: 001,
    image: 'assets/generations/generation1/001.png',
    color: Color(0xFF81b780),
  ),
  Pokemon(
    id: 2,
    name: 'Charmander',
    number: 002,
    image: 'assets/generations/generation1/004.png',
    color: Colors.orangeAccent,
  ),
  Pokemon(
    id: 3,
    name: 'Squirtle',
    number: 008,
    image: 'assets/generations/generation1/007.png',
    color: Colors.blueAccent,
  ),
  Pokemon(
    id: 4,
    name: 'Oddish',
    number: 004,
    image: 'assets/generations/generation2/152.png',
    color: Colors.green,
  ),
  Pokemon(
    id: 5,
    name: 'Parasect',
    number: 005,
    image: 'assets/generations/generation4/390.png',
    color: Colors.orangeAccent,
  ),
  Pokemon(
    id: 6,
    name: 'Diround',
    number: 009,
    image: 'assets/generations/generation2/158.png',
    color: Colors.blueAccent,
  ),
  Pokemon(
    id: 7,
    name: 'Oddish',
    number: 010,
    image: 'assets/generations/generation3/252.png',
    color: Colors.green,
  ),
  Pokemon(
    id: 8,
    name: 'Parasect',
    number: 011,
    image: 'assets/generations/generation3/255.png',
    color: Colors.orangeAccent,
  ),
];
