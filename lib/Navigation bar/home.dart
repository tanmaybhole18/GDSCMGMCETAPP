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
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 3;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const TeamPage(),
    const EventPage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        itemCount: bottomBarPages.length,
        itemBuilder: (context, index) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: bottomBarPages[index],
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
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
            duration: Duration(milliseconds: 500), // Animation duration
            curve: Curves.easeInOut, // Animation curve
          );
        },
      ),
    );
  }
}
