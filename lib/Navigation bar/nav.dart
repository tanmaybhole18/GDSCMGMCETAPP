import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class AnimatedNotchBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<Color> notchColors; // List of notch colors

  const AnimatedNotchBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
    required this.notchColors, // Pass the list of notch colors
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: NotchBottomBarController(index: currentIndex),
      color: Colors.white,
      showLabel: false,
      notchColor: notchColors[
          currentIndex], // Use the notch color for the current index
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
            'assets/Icons/icon.png',
            height: 40,
            width: 40,
          ),
          activeItem: Image.asset(
            'assets/Icons/icon.png',
            height: 40,
            width: 40,
          ),
          itemLabel: 'Page 2',
        ),
        BottomBarItem(
          inActiveItem: Image.asset('assets/GDSC/GDSC LOGO.png'),
          activeItem: Image.asset('assets/GDSC/GDSC LOGO.png'),
          itemLabel: 'Page 3',
        ),
      ],
      onTap: onTap,
    );
  }
}
