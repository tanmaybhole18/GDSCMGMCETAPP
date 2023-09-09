import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Expanded(flex: 4, child: Heading()),
      const AboutUs(),
      const Expanded(
        flex: 1,
        child: HeadProfile(),
      ),
      const Expanded(
        flex: 4,
        child: JoinUs(),
      ),
      SizedBox(
        height: 30,
        child: Container(
          color: const Color.fromARGB(255, 129, 201, 149),
        ),
      )
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
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
          color: Color.fromARGB(255, 129, 201, 149),
        ),
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomLeft,
        child: const Row(
          children: [
            Text(
              "Google Developer\nStudent Clubs",
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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: Colors.white,
      ),
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
    var boxDecoration = const BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      color: Color.fromARGB(255, 129, 201, 149),
    );
    return Container(
        decoration: boxDecoration,
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
                height: 30,
                width: 140,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                child: const Center(
                  child: Text(
                    'Become a Member ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
