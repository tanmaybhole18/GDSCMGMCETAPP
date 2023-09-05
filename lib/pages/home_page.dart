import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../model/team_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadTeamData();
  }

  Future<void> loadTeamData() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final teamJson = await rootBundle.loadString("assets/team.json");
      final decodedData = jsonDecode(teamJson);
      final teamMembersData = decodedData["Team"];
      setState(() {
        TeamModel.teamMembers = List.from(teamMembersData)
            .map<TeamMember>((item) => TeamMember.fromMap(item))
            .toList();
      });
    } catch (error) {
      const InkWell();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
          child: const Text(
            "Our Team",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/GDSC left.png',
                height: 70,
                width: 70,
              ),
              Container(
                height: 125,
                width: 125,
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
                )),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipOval(
                  child: Image.asset(
                'assets/sahil.jpg',
                height: 125,
                width: 125,
                fit: BoxFit.cover,
              )),
              Image.asset(
                'assets/GDSC right.png',
                height: 70,
                width: 70,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sahil Ambure",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              width: 60,
            ),
            Text(
              "Sahil Bodke",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              "Lead",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 100,
            ),
            Text(
              "Co-Lead",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
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
                height: 40,
                width: 40,
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
                height: 40,
                width: 40,
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
        const SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 2.0,
            width: 300,
            color: Colors.grey,
          ),
        ]),
        const SizedBox(
          height: 25,
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: TeamModel.teamMembers.length,
              itemBuilder: (context, index) {
                final team = TeamModel.teamMembers[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Container(
                    height: 270,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 182, 182, 182),
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
                          children: [
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/GDSC left.png',
                              height: 70,
                              width: 70,
                            ),
                            Container(
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                            ),
                            Image.asset(
                              'assets/GDSC right.png',
                              height: 70,
                              width: 70,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          team.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(team.post,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(children: [
                          const SizedBox(
                            width: 93,
                          ),
                          SizedBox(
                              height: 40,
                              width: 40,
                              child: ClipOval(
                                  child: Image.asset('assets/git.png'))),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child: ClipOval(
                                  child: Image.asset('assets/linked.png'))),
                          const SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child: ClipOval(
                                  child: Image.asset('assets/twitter.jpeg'))),
                        ]),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              width: 220,
                            ),
                            Container(
                              height: 35,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueAccent),
                              child: const Center(
                                child: Text(
                                  "Team",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ]),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: GNav(
            gap: 8,
            padding: const EdgeInsets.all(16),
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            tabs: const [
              GButton(
                icon: Icons.groups,
                text: 'Team',
              ),
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
              ),
              GButton(
                icon: Icons.info_outline,
                text: 'About Us',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
