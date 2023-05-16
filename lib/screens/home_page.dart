import 'package:CoinSky/widgets/home.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_rail_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color grey1 = Colors.grey[900]!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(
              width: 252,
            ),
            Container(
              color: grey1,
              width: 1,
              height: 100,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text('Home'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Theme.of(context).colorScheme.secondary,
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
                alignment: Alignment.center, width: 1, color: Colors.grey[600]),
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
      body: Row(
        children: [
          NavigationRail2(),
          Container(
            color: grey1,
            width: 1,
            height: double.infinity,
            // height: 200,
          ),
          // Text('This is the page'),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 1,
                  color: grey1,
                  // width: double.infinity,
                  width: 3000,
                ),
                Container(
                  height: 1800,
                  width: 2500,
                  // child: const Text('menu'),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Flexible(child: HomePageWidget()),
                  ),
                ),
              ],
            ),
          ),
          // TODO: MAKE THE SEPARATION LINES BETWEEN NAVIGATION RAIL - PAGE,
          //APPBAR - PAGE
          // Container(
          //   color: grey1,
          //   width: 1,
          //   // height: double.infinity,
          //   height: 200,
          // ),
          // Column(
          //   children: [
          //     Container(
          //       color: grey1,
          //       width: double.infinity,
          //       height: 1,
          //     ),
          //     Container(
          //       height: double.infinity,
          //       width: double.infinity,
          //       color: Colors.purple,
          //       child: const Padding(
          //         padding: EdgeInsets.all(20),
          //         child: Text('This is the page'),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
