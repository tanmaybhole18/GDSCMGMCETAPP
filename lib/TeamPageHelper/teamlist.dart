import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart'; // Import the card_swiper package
import 'package:google_fonts/google_fonts.dart';
import '../model/team_model.dart';
import '../pages/Teammember.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key? key});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        final team = TeamModel.teamMembers[index];
        return Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Container(
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 255, 153, 153),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/GDSC/GDSC left.png',
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      height:
                          MediaQuery.of(context).size.width > 411 ? 135 : 115,
                      width:
                          MediaQuery.of(context).size.width > 411 ? 135 : 115,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromARGB(255, 0, 0, 0), // Border color
                          width: 1, // Border width
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/GDSC/GDSC right.png',
                      height: 80,
                      width: 80,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
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
                  height: 7,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 55,
                        width: 55,
                        child: ClipOval(
                          child: Image.asset('assets/Icons/git.png'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: ClipOval(
                          child: Image.asset('assets/Icons/linked.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: ClipOval(
                          child: Image.asset('assets/Icons/twitter.jpeg'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TeamMemberDetailsPage(name: team.name),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueAccent,
                        ),
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
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: TeamModel.teamMembers.length,
      scale: 0.8, // Adjust the scale as needed
      viewportFraction: 0.8, // Adjust the viewportFraction as needed
    );
  }
}
