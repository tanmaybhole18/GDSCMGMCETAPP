import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart'; // Import the card_swiper package
import '../model/team_model.dart';

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
                      'assets/GDSC left.png',
                      height: 80,
                      width: 80,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width > 411 ? 135 : 115,
                      width: MediaQuery.of(context).size.width > 411 ? 135 : 115,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/GDSC right.png',
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
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  team.post,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 55,
                      width: 55,
                      child: ClipOval(
                        child: Image.asset('assets/git.png'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: ClipOval(
                        child: Image.asset('assets/linked.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: ClipOval(
                        child: Image.asset('assets/twitter.jpeg'),
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
                    Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      child: const Center(
                        child: Text(
                          "Team",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white,
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
