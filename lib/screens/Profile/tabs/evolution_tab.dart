import 'package:flutter/material.dart';

class EvolutionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Evolution tab',
        style: Theme.of(context).textTheme.headline5.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
