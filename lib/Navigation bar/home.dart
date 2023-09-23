import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:gdsc/pages/eventpage.dart';
import 'package:gdsc/pages/teampage.dart';

import 'nav.dart';
import '../pages/about_us.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 1);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 1);

  int maxCount = 3;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Color> notchColors = [
    const Color.fromARGB(255, 255, 153,
        153), // Change this to the color you want for the first page
    Colors.blue, // Change this to the color you want for the second page
    const Color.fromARGB(255, 129, 201,
        149), // Change this to the color you want for the third page
  ];

  final List<Widget> bottomBarPages = [
    const TeamPage(),
    const EventPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: bottomBarPages.length,
        itemBuilder: (context, index) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            child: bottomBarPages[index],
          );
        },
        onPageChanged: (index) {
          setState(() {
            _controller.index = index;
          });
        },
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomNavigationBar(
        currentIndex: _controller.index,
        onTap: (index) {
          _controller.index = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500), // Animation duration
            curve: Curves.easeInOut, // Animation curve
          );
        },
        notchColors: notchColors,
      ),
    );
  }
}
