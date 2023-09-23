import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamMemberDetailsPage extends StatefulWidget {
  final String name;

  const TeamMemberDetailsPage({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<TeamMemberDetailsPage> createState() => _TeamMemberDetailsPageState();
}

class _TeamMemberDetailsPageState extends State<TeamMemberDetailsPage> {
  List<Map<String, dynamic>> Mem = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final jsonData = await DefaultAssetBundle.of(context)
        .loadString('assets/JSON/member.json');
    final data = json.decode(jsonData);

    setState(() {
      Mem = List<Map<String, dynamic>>.from(data['school'][widget.name]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 10,
        title: Text(
          'Team',
          style: GoogleFonts.forum(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF48A9C5),
              Color(0xFF0962A3),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: Mem.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/GDSC/GDSC left.png',
                              height: 80,
                              width: 80,
                            ),
                            Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  width: 1,
                                ),
                              ),
                              child: ClipOval(
                                child: Image.asset(Mem[index]['image']),
                              ),
                            ),
                            Image.asset(
                              'assets/GDSC/GDSC right.png',
                              height: 80,
                              width: 80,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          Mem[index]['name'],
                          style: GoogleFonts.forum(
                            color: Color(0xFF0962A3),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          Mem[index]['post'],
                          style: GoogleFonts.forum(
                            color: Color(0xFF48A9C5),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFD700), // Gold
                                Color(0xFFFFA500), // Orange
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: GestureDetector(
                                  onTap: () {
                                    launchUrl(
                                      Uri.parse(Mem[index]['git']),
                                      mode: LaunchMode.externalApplication,
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Icons/git.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: GestureDetector(
                                  onTap: () {
                                    launchUrl(
                                      Uri.parse(Mem[index]['linked']),
                                      mode: LaunchMode.externalApplication,
                                    );
                                  },
                                  child: Image.asset(
                                    'assets/Icons/linked.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
