import 'header_widget.dart';
import 'tab_views_widget.dart';
import 'tabs_widget.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';

class BodyProfile extends StatefulWidget {
  Pokemon pokemon;
  BodyProfile(this.pokemon);
  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile>
    with TickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabNames = ['About', 'Stats', 'Evolution'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabNames.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Stack(children: [
        Container(
          child: Column(
            children: <Widget>[
              buildHeaderProfile(context, widget.pokemon),
              TabsWidget(_tabController, _tabNames),
              TabViews(context, _tabController, widget.pokemon),
            ],
          ),
        ),
      ]),
    );
  }
}
