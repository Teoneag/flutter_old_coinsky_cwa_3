import 'package:flutter/material.dart';

class NavigationRail2 extends StatelessWidget {
  const NavigationRail2({super.key});

  Widget button7(Color color, IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        onTap: () {},
        hoverColor: color,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(
                width: 10,
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final buttonColor =
        Theme.of(context).colorScheme.secondary.withOpacity(0.4);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //TODO: only icon + tooltip if width < treshhold else icon + label
        button7(buttonColor, Icons.home, 'Home'),
        button7(buttonColor, Icons.pie_chart, 'Assets'),
        button7(buttonColor, Icons.bar_chart, 'Trade'),
        button7(buttonColor, Icons.percent, 'Earn'),
        button7(buttonColor, Icons.auto_awesome, 'Learning rewards'),
        button7(buttonColor, Icons.more_vert, 'More'),
      ],
    );
  }
}

/*
TextButton.icon(
          icon: const Icon(Icons.home),
          label: const Text('Home'),
          onPressed: () {},
        ),
        InkWell(
          onTap: () {},
          hoverColor: Theme.of(context).colorScheme.secondary,
          child: const Icon(Icons.circle),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: const BorderRadius.all(Radius.circular(100))),
        ),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            // backgroundColor: Colors.black,
            foregroundColor: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {},
          child: Row(
            children: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        )
*/