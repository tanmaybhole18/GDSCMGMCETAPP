import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart'; // Import the card_swiper package
import 'package:google_fonts/google_fonts.dart';
import '../model/team_model.dart';
import '../pages/Teammember.dart';

class TeamList extends StatelessWidget {
  const TeamList({super.key});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      autoplay: true,
      autoplayDisableOnInteraction: true,
      containerWidth: MediaQuery.of(context).size.width,
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
                      height:
                          MediaQuery.of(context).size.height < 650 ? 60 : 80,
                      width: MediaQuery.of(context).size.height < 650 ? 60 : 80,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height < 650
                          ? 90
                          : MediaQuery.of(context).size.width > 411
                              ? 135
                              : 115,
                      width: MediaQuery.of(context).size.height < 650
                          ? 90
                          : MediaQuery.of(context).size.width > 411
                              ? 135
                              : 115,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(
                              255, 0, 0, 0), // Border color
                          width: 1, // Border width
                        ),
                      ),
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
                  height: 5,
                ),
                Text(
                  team.name,
                  style: GoogleFonts.forum(
                    color: Colors.white,
                    fontSize:
                        MediaQuery.of(context).size.height < 650 ? 15 : 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  team.post,
                  style: GoogleFonts.forum(
                    color: Colors.white,
                    fontSize:
                        MediaQuery.of(context).size.height < 650 ? 13 : 18,
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
                        height:
                            MediaQuery.of(context).size.height < 650 ? 45 : 55,
                        width:
                            MediaQuery.of(context).size.height < 650 ? 45 : 55,
                        child: ClipOval(
                          child: Image.asset('assets/Icons/git.png'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height:
                            MediaQuery.of(context).size.height < 650 ? 30 : 40,
                        width:
                            MediaQuery.of(context).size.height < 650 ? 30 : 40,
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
                        height:
                            MediaQuery.of(context).size.height < 650 ? 30 : 40,
                        width:
                            MediaQuery.of(context).size.height < 650 ? 30 : 40,
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
                        height: MediaQuery.of(context).size.height < 650 ? 35 :40,
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
                              fontSize: MediaQuery.of(context).size.height < 650 ? 14 :18,
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
