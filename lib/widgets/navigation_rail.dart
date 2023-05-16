import 'package:flutter/material.dart';

import '../utility/values.dart';

class NavigationRail1 extends StatefulWidget {
  const NavigationRail1({super.key});

  @override
  State<NavigationRail1> createState() => _NavigationRail1State();
}

class _NavigationRail1State extends State<NavigationRail1> {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          selectedIndex = index;
          print(selectedIndex);
        });
      },
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Tooltip(
            message: 'Home',
            child: Icon(Icons.home),
          ),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          icon: Tooltip(
            message: 'MyAssets',
            child: Icon(Icons.pie_chart),
          ),
          label: Text('MyAssets'),
        ),
        NavigationRailDestination(
          icon: Tooltip(
            message: 'Trade',
            child: Icon(Icons.bar_chart),
          ),
          label: Text('Trade'),
        ),
        NavigationRailDestination(
          icon: Tooltip(
            message: 'Earn',
            child: Icon(Icons.percent),
          ),
          label: Text('Earn'),
        ),
        NavigationRailDestination(
          icon: Tooltip(
            message: 'Learning Rewards',
            child: Icon(Icons.auto_awesome),
          ),
          label: Text('Learning Rewards'),
        ),
        NavigationRailDestination(
          icon: Tooltip(
            message: 'More',
            child: Icon(Icons.more_vert),
          ),
          label: Text('More'),
        )
      ],
    );
  }
}
