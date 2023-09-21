import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  'assets/GDSC/GDSC left.png',
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
                    'assets/Leads/sahila.jpg',
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
                    'assets/Leads/sahil.jpg',
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
                  'assets/GDSC/GDSC right.png',
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
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width > 360 ? 87 : 73,
          ),
          Text(
            "Sahil Ambure",
            style: GoogleFonts.forum(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fade(delay: const Duration(milliseconds: 500)),
          SizedBox(
            width: MediaQuery.of(context).size.width > 360 ? 47 : 23,
          ),
          Text(
            "Sahil Bodke",
            style: GoogleFonts.forum(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fade(delay: const Duration(milliseconds: 500)),
        ],
      ),
      const SizedBox(
        height: 2,
      ),
      Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width > 360 ? 117 : 103,
          ),
          Text(
            "Lead",
            style: GoogleFonts.forum(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fade(delay: const Duration(milliseconds: 500)),
          SizedBox(
            width: MediaQuery.of(context).size.width > 360 ? 88 : 65,
          ),
          Text(
            "Co-Lead",
            style: GoogleFonts.forum(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fade(delay: const Duration(milliseconds: 500)),
        ],
      ),
      const SizedBox(
        height: 0,
      ),
      Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width > 360 ? 70 : 55,
          ),
          GestureDetector(
            onTap: () {
              launchUrl(
                Uri.parse("https://github.com/sahilambure94"),
                mode: LaunchMode.externalApplication,
              );
            },
            child: SizedBox(
                height: 47,
                width: 47,
                child: ClipOval(child: Image.asset('assets/Icons/git.png'))),
          ),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
                height: 30,
                width: 30,
                child: ClipOval(child: Image.asset('assets/Icons/linked.png'))),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
                height: 30,
                width: 30,
                child:
                    ClipOval(child: Image.asset('assets/Icons/twitter.jpeg'))),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width > 360 ? 23 : 5,
          ),
          SizedBox(
              height: 47,
              width: 47,
              child: ClipOval(child: Image.asset('assets/Icons/git.png'))),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/Icons/linked.png'))),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/Icons/twitter.jpeg'))),
        ],
      ),
    ]);
  }
}
