import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Expanded(flex: 4, child: Heading()),
      Expanded(flex: 3, child: AboutUs()),
      Expanded(
        flex: 1,
        child: HeadProfile(),
      ),
      Expanded(
        flex: 4,
        child: JoinUs(),
      ),
      //Heading()
      //AboutUs()
      //HeadProfile(),
      //JoinUs(),
    ]);
  }
}

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: const Color.fromARGB(255, 129, 201, 149),
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomLeft,
        child: const Row(
          children: [
            Text(
              "Google Devloper\nStudent Clubs",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Spacer(),
            Text(
              '<>',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
            )
          ],
        ));
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({
    super.key,
  });
  final String aboutUs =
      'At the Google Student Council Group, we are committed to fostering a dynamic and inclusive community that empowers students to innovate, collaborate, and make a positive impact on their campuses and beyond. Our vision is to connect students with a passion for technology and education, providing them with opportunities to grow, lead, and contribute to a brighter future.';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'About Us',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          aboutUs,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        )
      ]),
    );
  }
}

class HeadProfile extends StatelessWidget {
  const HeadProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
            )
          ],
        )); // profile
  }
}

class JoinUs extends StatelessWidget {
  const JoinUs({
    super.key,
  });

  final String joinUsText =
      'By becoming a part of the Google Student Council Group, you ll have the opportunity to:\nExpand your knowledge of cutting-edge technology.\nBuild a strong professional network. \nGain leadership experience.\nMake a positive impact on your campus and community.\nBe part of a supportive and diverse community of like-minded students.';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 129, 201, 149),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Join Our Community !',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              joinUsText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                child: const Text(
                  'Become a Member ',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ));
  }
}
