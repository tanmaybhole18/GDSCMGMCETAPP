// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamMemberDetailsPage extends StatefulWidget {
  final String name;

  TeamMemberDetailsPage({
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
    final jsonData =
        await DefaultAssetBundle.of(context).loadString('assets/member.json');
    final data = json.decode(jsonData);

    setState(() {
      Mem = List<Map<String, dynamic>>.from(data['school'][widget.name]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Team"),
      ),
      body: ListView.builder(
          itemCount: Mem.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.all(20), // Add spacing here
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 120, 202, 219),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/GDSC left.png',
                            height: 80,
                            width: 80,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width > 411
                                ? 135
                                : 110,
                            width: MediaQuery.of(context).size.width > 411
                                ? 135
                                : 110,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 220, 99, 99),
                            ),
                            child: ClipOval(
                                child: Image.network(Mem[index]['image'])),
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
                        Mem[index]['name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        Mem[index]['post'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
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
                            onTap: () {
                              launchUrl(
                                Uri.parse(Mem[index]['git']),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            child: SizedBox(
                              height: 55,
                              width: 55,
                              child: ClipOval(
                                child: Image.asset('assets/git.png'),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              launchUrl(
                                Uri.parse(Mem[index]['linked']),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: ClipOval(
                                child: Image.asset('assets/linked.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              launchUrl(
                                Uri.parse(Mem[index]['twitter']),
                                mode: LaunchMode.externalApplication,
                              );
                            },
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: ClipOval(
                                child: Image.asset('assets/twitter.jpeg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
          }),
    );
  }
}
