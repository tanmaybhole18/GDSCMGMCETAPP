import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdsc/pages/eventpage.dart';
import 'package:gdsc/pages/teampage.dart';
import 'package:ionicons/ionicons.dart';

import '../model/nav.dart';
import 'about_us.dart';

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
int appbarColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List appbarColor = <Color>[const Color.fromARGB(255,242,139,130),const Color.fromARGB(255,138,180,248,) , const Color.fromARGB(255, 129,201,149),];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: 
        appbarColor[appbarColorIndex],
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Ionicons.search)), 
          IconButton(onPressed: (){}, icon: const Icon(Ionicons.person_circle))
        ],),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomNavigationBar(
        currentIndex:
            _controller.index, // Pass the current index from your controller
        onTap: (index) {
        setState(() {                
      appbarColorIndex = index;
    });
          
          _controller.index = index; // Update the controller index
          _pageController.jumpToPage(index); // Jump to the selected page
        },
      ),
    );
  }
}
