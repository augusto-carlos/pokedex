import 'package:flutter/material.dart';

class StatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Stats tab',
        style: Theme.of(context).textTheme.headline5.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
