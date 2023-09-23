import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc/TeamPageHelper/leads.dart';
import 'package:gdsc/TeamPageHelper/teamlist.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/team_model.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  void initState() {
    super.initState();
    loadTeamData();
  }

  Future<void> loadTeamData() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final teamJson = await rootBundle.loadString("assets/JSON/team.json");
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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height > 750 ? 45 : 5,
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.blueAccent,
                        offset: Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1),
                    BoxShadow(
                        color: Color.fromARGB(255, 40, 163, 9),
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1)
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 255, 153, 153),
                      Color.fromARGB(255, 210, 61, 237)
                    ], // Adjust colors as needed
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                "Our Team",
                style: GoogleFonts.forum(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height > 750 ? 35 : 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height > 750 ? 35 : 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Leads(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height > 750 ? 30 : 10,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2.0,
                    width: 300,
                    color: Colors.grey,
                  ),
                ]),
            SizedBox(
              height: MediaQuery.of(context).size.height > 950
                  ? 120
                  : MediaQuery.of(context).size.height > 850
                      ? 45
                      : 25,
            ),
            Expanded(
              child: TeamList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height > 950 ? 130 : 100,
            )
          ]),
    );
  }
}
