import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const NavRail1(),
    );
  }
}

class NavRail1 extends StatefulWidget {
  const NavRail1({super.key});

  @override
  State<NavRail1> createState() => _NavRail1State();
}

class _NavRail1State extends State<NavRail1> {
  int _selectedIndex = 0;

  static const List<Widget> _pageName = <Widget>[
    Text('Home'),
    Text('Assets'),
    Text('Trade'),
    Text('Earn'),
    Text('Learning rewards'),
    Text('More'), //drawer?
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    Text('This is the Home'),
    Text('This is the Assets'),
    Text('This is the Trade'),
    Text('This is the Earn'),
    Text('This is the Learning rewards'),
    Text('This is the More'), //drawer?
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
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
          ),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                title: _pageName.elementAt(_selectedIndex),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Buy & Sell',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[700],
                          shape: const StadiumBorder()),
                      child: const Text(
                        'Send & Receive',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.notifications),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[700],
                      radius: 20,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.center,
                        width: 1,
                        color: Colors.grey[600]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.camera_alt_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              body: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
        ],
      ),
    );
  }
}
