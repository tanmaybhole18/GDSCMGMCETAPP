import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class AnimatedNotchBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AnimatedNotchBottomNavigationBar({super.key, 
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: NotchBottomBarController(index: currentIndex),
      color: Colors.white,
      showLabel: false,
      notchColor: const Color.fromARGB(221, 199, 199, 199),
      removeMargins: false,
      bottomBarWidth: 500,
      durationInMilliSeconds: 300,
      bottomBarItems: [
        const BottomBarItem(
          inActiveItem: Icon(Icons.group),
          activeItem: Icon(Icons.group),
          itemLabel: 'Page 1',
        ),
        BottomBarItem(
          inActiveItem: Image.asset(
            'assets/icon.png',
            height: 40,
            width: 40,
          ),
          activeItem: Image.asset(
            'assets/icon.png',
            height: 40,
            width: 40,
          ),
          itemLabel: 'Page 2',
        ),
        BottomBarItem(
          inActiveItem: Image.asset('assets/GDSC LOGO.png'),
          activeItem: Image.asset('assets/GDSC LOGO.png'),
          itemLabel: 'Page 3',
        ),
      ],
      onTap: onTap,
    );
  }
}
