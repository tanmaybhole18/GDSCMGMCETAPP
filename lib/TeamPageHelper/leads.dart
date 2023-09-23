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
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height > 950
                        ? 15
                        : MediaQuery.of(context).size.height > 900
                            ? 25
                            : MediaQuery.of(context).size.height > 850
                                ? 30
                                : MediaQuery.of(context).size.height > 799
                                    ? 15
                                    : MediaQuery.of(context).size.height > 699
                                        ? 25
                                        : 15,
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Transform.scale(
                        scale:
                            _scaleAnimation.value, // Apply the scale animation
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
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                    width: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:
                            const Color.fromARGB(255, 0, 0, 0), // Border color
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
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Sahil Ambure",
                    style: GoogleFonts.forum(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ).animate().fade(delay: const Duration(milliseconds: 500)),
                  Text(
                    "Lead",
                    style: GoogleFonts.forum(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ).animate().fade(delay: const Duration(milliseconds: 500)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                            5.0), // Adjust the padding as needed
                        child: GestureDetector(
                          onTap: () {
                            launchUrl(
                              Uri.parse("https://github.com/sahilambure94"),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: ClipOval(
                              child: Image.asset('assets/Icons/git.png'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                            5.0), // Adjust the padding as needed
                        child: GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: ClipOval(
                              child: Image.asset('assets/Icons/linked.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                    width: MediaQuery.of(context).size.width > 411 ? 125 : 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:
                            const Color.fromARGB(255, 0, 0, 0), // Border color
                        width: 0.5, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/Leads/sahil.jpg',
                        height:
                            MediaQuery.of(context).size.width > 411 ? 125 : 100,
                        width:
                            MediaQuery.of(context).size.width > 411 ? 125 : 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ).animate().fade(delay: const Duration(seconds: 1)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Sahil Bodke",
                    style: GoogleFonts.forum(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ).animate().fade(delay: const Duration(milliseconds: 500)),
                  Text(
                    "Co-Lead",
                    style: GoogleFonts.forum(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ).animate().fade(delay: const Duration(milliseconds: 500)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                            5.0), // Adjust the padding as needed
                        child: GestureDetector(
                          onTap: () {
                            launchUrl(
                              Uri.parse("https://github.com/sahilambure94"),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: ClipOval(
                              child: Image.asset('assets/Icons/git.png'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                            5.0), // Adjust the padding as needed
                        child: GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: ClipOval(
                              child: Image.asset('assets/Icons/linked.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height > 950
                        ? 15
                        : MediaQuery.of(context).size.height > 900
                            ? 25
                            : MediaQuery.of(context).size.height > 850
                                ? 30
                                : MediaQuery.of(context).size.height > 799
                                    ? 15
                                    : MediaQuery.of(context).size.height > 699
                                        ? 25
                                        : 15,
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Transform.scale(
                        scale:
                            _scaleAnimation1.value, // Apply the scale animation
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
        ],
      ),
    ]);
  }
}
