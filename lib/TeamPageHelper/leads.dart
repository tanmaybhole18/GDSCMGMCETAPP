import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Leads extends StatefulWidget {
  const Leads({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LeadsState createState() => _LeadsState();
}

class _LeadsState extends State<Leads> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _positionAnimation;
  late Animation<double> _scaleAnimation1;
  late Animation<double> _positionAnimation1;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _scaleAnimation = Tween<double>(
      begin: 2, // Starting scale (big)
      end: 1, // Ending scale (small)
    ).animate(_controller);

    _positionAnimation = Tween<double>(
      begin: 70.0, // Starting position (center)
      end: 0.0, // Ending position (right)
    ).animate(_controller);

    _scaleAnimation1 = Tween<double>(
      begin: 2, // Starting scale (big)
      end: 1, // Ending scale (small)
    ).animate(_controller);

    _positionAnimation1 = Tween<double>(
      begin: -70.0, // Starting position (center)
      end: 0.0, // Ending position (right)
    ).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _scaleAnimation.value, // Apply the scale animation
                    child: Transform.translate(
                      offset: Offset(_positionAnimation.value,
                          0.0), // Apply the X-axis translation
                      child: child,
                    ),
                  );
                },
                child: Image.asset(
                  'assets/GDSC left.png',
                  height: 70,
                  width: 70,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                width: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0), // Border color
                    width: 0.5, // Border width
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/sahila.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ).animate().fade(delay: const Duration(seconds: 1)),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                width: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0), // Border color
                    width: 0.5, // Border width
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/sahil.jpg',
                    height: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                    width: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ).animate().fade(delay: const Duration(seconds: 1)),
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _scaleAnimation1.value, // Apply the scale animation
                    child: Transform.translate(
                      offset: Offset(_positionAnimation1.value,
                          0.0), // Apply the X-axis translation
                      child: child,
                    ),
                  );
                },
                child: Image.asset(
                  'assets/GDSC right.png',
                  height: 70,
                  width: 70,
                ),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Sahil Ambure",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ).animate().fade(delay: const Duration(milliseconds: 500)),
          const SizedBox(
            width: 60,
          ),
          const Text(
            "Sahil Bodke",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ).animate().fade(delay: const Duration(milliseconds: 500)),
        ],
      ),
      const SizedBox(
        height: 2,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 15,
          ),
          const Text(
            "Lead",
            style: TextStyle(fontWeight: FontWeight.bold),
          ).animate().fade(delay: const Duration(milliseconds: 500)),
          const SizedBox(
            width: 100,
          ),
          const Text(
            "Co-Lead",
            style: TextStyle(fontWeight: FontWeight.bold),
          ).animate().fade(delay: const Duration(milliseconds: 500)),
        ],
      ),
      const SizedBox(
        height: 0,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: 47,
              width: 47,
              child: ClipOval(child: Image.asset('assets/git.png'))),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/linked.png'))),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/twitter.jpeg'))),
          const SizedBox(
            width: 35,
          ),
          SizedBox(
              height: 47,
              width: 47,
              child: ClipOval(child: Image.asset('assets/git.png'))),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/linked.png'))),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/twitter.jpeg'))),
        ],
      ),
    ]);
  }
}
