import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../model/team_model.dart';
import '../pages/Teammember.dart';

class TeamList extends StatefulWidget {
  const TeamList({super.key});

  @override
  State<TeamList> createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
  bool isButtonPressed = false;

  // Function to play the animation and reset isButtonPressed
  void playAnimation() async {
    setState(() {
      isButtonPressed = true;
    });

    // Delay to let the animation play
    await Future.delayed(const Duration(seconds: 3)); // Adjust the duration as needed

    setState(() {
      isButtonPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      autoplay: true,
      autoplayDisableOnInteraction: true,
      containerWidth: MediaQuery.of(context).size.width,
      itemBuilder: (BuildContext context, int index) {
        final team = TeamModel.teamMembers[index];
        return Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 255, 153, 153),
                Color.fromARGB(255, 210, 61, 237)
              ], // Adjust colors as needed
            ),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0), // Adjust padding as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/GDSC/GDSC left.png',
                      height:
                          MediaQuery.of(context).size.height < 650 ? 60 : 80,
                      width: MediaQuery.of(context).size.height < 650 ? 60 : 80,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height < 650
                          ? 90
                          : MediaQuery.of(context).size.width > 411
                              ? 135
                              : 110,
                      width: MediaQuery.of(context).size.height < 650
                          ? 90
                          : MediaQuery.of(context).size.width > 411
                              ? 135
                              : 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(4, 4),
                              blurRadius: 15,
                              spreadRadius: 1),
                        ],
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(
                              255, 0, 0, 0), // Border color
                          width: 1, // Border width
                        ),
                      ),
                      child: ClipOval(child: Image.asset(team.image)),
                    ),
                    Image.asset(
                      'assets/GDSC/GDSC right.png',
                      height:
                          MediaQuery.of(context).size.height < 650 ? 60 : 80,
                      width: MediaQuery.of(context).size.height < 650 ? 60 : 80,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  team.name,
                  style: GoogleFonts.forum(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  team.post,
                  style: GoogleFonts.forum(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle GitHub link
                      },
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: ClipOval(
                          child: Image.asset('assets/Icons/git.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        // Handle LinkedIn link
                      },
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: ClipOval(
                          child: Image.asset('assets/Icons/linked.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        playAnimation(); // Play the animation immediately

                        // Delay the navigation using Future.delayed
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TeamMemberDetailsPage(name: team.name),
                            ),
                          );
                        });
                      },
                      child: isButtonPressed == false
                          ? AnimatedContainer(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.blueAccent,
                                      offset: Offset(4, 4),
                                      blurRadius: 15,
                                      spreadRadius: 1),
                                  BoxShadow(
                                      color: Color.fromARGB(255, 210, 61, 237),
                                      offset: Offset(-4, -4),
                                      blurRadius: 15,
                                      spreadRadius: 1)
                                ],
                                color: Colors.blueAccent,
                              ),
                              duration: const Duration(milliseconds: 200),
                              child: Center(
                                child: Text(
                                  "Team",
                                  style: GoogleFonts.forum(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          : Lottie.asset(
                              'assets/Icons/animation.json', // Replace with your animation file path
                              width: 80,
                              height: 80,
                              repeat: false,
                            ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: TeamModel.teamMembers.length,
      scale: 0.8,
      viewportFraction: 0.8,
    );
  }
}
