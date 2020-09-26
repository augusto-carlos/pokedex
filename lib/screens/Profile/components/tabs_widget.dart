import 'package:flutter/material.dart';
import 'package:pokedex/contants.dart';

class TabsWidget extends StatefulWidget {
  TabController tabController;
  List<String> tabNames;

  TabsWidget(this.tabController, this.tabNames);

  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  @override
  Widget build(BuildContext context) {
    var index = 0;

    return Container(
      margin: EdgeInsets.only(top: ConstPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            widget.tabNames.map((tabName) => buildTabItem(index++)).toList(),
      ),
    );
  }

  Widget buildTabItem(int index) {
    return GestureDetector(
      onTap: () => setState(() {
        widget.tabController.index = index;
      }),
      child: Container(
        padding: EdgeInsets.all(ConstPadding / 2),
        child: Text(
          widget.tabNames[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: widget.tabController.index == index
                ? Colors.white
                : Colors.white.withOpacity(0.4),
          ),
        ),
      ),
    );
  }
}
