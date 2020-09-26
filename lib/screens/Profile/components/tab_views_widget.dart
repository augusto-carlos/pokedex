import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/screens/Profile/tabs/about_tab.dart';
import 'package:pokedex/screens/Profile/tabs/evolution_tab.dart';
import 'package:pokedex/screens/Profile/tabs/stats_tab.dart';
import 'package:pokedex/contants.dart';

class TabViews extends StatelessWidget {
  TabController tabController;
  BuildContext context;
  Pokemon pokemon;

  TabViews(this.context, this.tabController, this.pokemon);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> _tabViews = [
      AboutTab(pokemon),
      StatsTab(),
      EvolutionTab(),
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: ConstPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(ConstPadding),
      ),
      height: size.height - (size.height * 0.2),
      width: size.width,
      child: TabBarView(
        controller: tabController,
        physics: NeverScrollableScrollPhysics(),
        children: _tabViews.map((tabView) => tabView).toList(),
      ),
    );
  }
}
