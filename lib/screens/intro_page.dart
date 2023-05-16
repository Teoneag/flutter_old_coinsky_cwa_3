import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';

import 'package:iconly/iconly.dart';
import 'package:slide_to_act/slide_to_act.dart';

import './home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // TO MAKE ADAPTIVE: LOOKS GOOD ON PORTRAT,BUT BAD ON LANDSCAPE:
      //https://www.geeksforgeeks.org/flutter-layoutbuilder-widget/
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FadeInDown(
                child: Center(
                  child: Container(
                    width: screenWidth * 0.7,
                    height: screenHeight * 0.5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/NFT_4.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              FadeInLeft(
                child: Text(
                  'Join CoinSky today...\nto make money tomorow!',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              FadeInLeft(
                  child: Text(
                'Grow your portfolio by receiving rewards up to 15.5% on your crypto assets',
                style: Theme.of(context).textTheme.titleSmall,
              )),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Builder(
                builder: (context) {
                  final GlobalKey<SlideActionState> key = GlobalKey();
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SlideAction(
                      sliderRotate: false,
                      outerColor: Colors.grey[900],
                      innerColor: Theme.of(context).colorScheme.secondary,
                      key: key,
                      sliderButtonIcon: const Icon(
                        IconlyBroken.arrow_right,
                        color: Colors.black,
                      ),
                      onSubmit: () {
                        Future.delayed(
                          const Duration(seconds: 1),
                          () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          },
                        );
                      },
                      child: FadeInRight(
                          child: Text(
                        'Swipe to get started',
                        style: Theme.of(context).textTheme.bodyMedium,
                      )),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
