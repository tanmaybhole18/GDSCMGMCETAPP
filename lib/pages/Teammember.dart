// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';

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
            return ListTile(
              title: Text(Mem[index]['name']),
              subtitle: Text(Mem[index]['post']),
            );
          }),
    );
  }
}
