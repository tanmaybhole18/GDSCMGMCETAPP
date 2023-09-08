import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc/TeamPageHelper/leads.dart';
import 'package:gdsc/TeamPageHelper/teamlist.dart';
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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height > 700 ? 45 : 5,
            ),
            Text(
              "Our Team",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Leads(),
            ),
            const SizedBox(
              height: 30,
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
              height: MediaQuery.of(context).size.height > 950 ? 120 : 45,
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
