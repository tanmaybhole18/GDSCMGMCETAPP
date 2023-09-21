import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          flex: MediaQuery.of(context).size.height > 850
              ? 4
              : MediaQuery.of(context).size.height > 750
                  ? 3
                  : 2,
          child: Heading()),
      const AboutUs(),
      const Expanded(
        flex: 1,
        child: SocialMediaLinks(),
      ),
      SizedBox(
        height: 10,
        child: Container(
          color: Colors.white,
        ),
      ),
      const Expanded(
        flex: 4,
        child: JoinUs(),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height > 850 ? 110 : 90,
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
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
        child: Row(
          children: [
            Text(
              "Google Developer\nStudent Clubs",
              style: GoogleFonts.forum(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const SizedBox(
              height: 100,
              width: 100,
              child: Image(
                image: AssetImage("assets/GDSC/GDSC LOGO.png"),
              ),
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
        Text(
          'About Us',
          style: GoogleFonts.forum(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(aboutUs,
            style: GoogleFonts.forum(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.height > 950 ? 17 : MediaQuery.of(context).size.height > 850 ? 15 : 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify),
      ]),
    );
  }
}

class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            socialMediaLogo(
                'https://www.instagram.com/', Ionicons.logo_instagram),
            socialMediaLogo(
                'https://www.instagram.com/', Ionicons.logo_twitter),
            socialMediaLogo(
                'https://www.instagram.com/', Ionicons.logo_youtube),
            socialMediaLogo(
                'https://www.instagram.com/', Ionicons.logo_discord),
            socialMediaLogo(
                'https://www.instagram.com/', Ionicons.logo_facebook),
          ],
        )); // profile
  }

  GestureDetector socialMediaLogo(final String url, final IconData icon_) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0), shape: BoxShape.circle),
        child: Icon(
          icon_,
          color: Colors.white,
        ),
      ),
      onTap: () {
        launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalApplication,
        );
      },
    );
  }
}

class JoinUs extends StatelessWidget {
  const JoinUs({
    super.key,
  });

  final String joinUsText =
      'By becoming a part of the Google Student Council Group, you ll have the opportunity to:\n> Expand your knowledge of cutting-edge technology.\n> Build a strong professional network. \n> Gain leadership experience.\n> Make a positive impact on your campus and community.\n> Be part of a supportive and diverse community of like-minded students.';
  @override
  Widget build(BuildContext context) {
    var boxDecoration = const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      color: Color.fromARGB(255, 129, 201, 149),
    );
    return Container(
        decoration: boxDecoration,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Join Our Community !',
              style: GoogleFonts.forum(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height > 850 ? 18 : 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              joinUsText,
              style: GoogleFonts.forum(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height > 950 ? 16 :MediaQuery.of(context).size.height > 850 ? 15 : 13,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
              strutStyle: StrutStyle(height: MediaQuery.of(context).size.height > 850 ? 1.2 :1),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Container(
                height: MediaQuery.of(context).size.height > 650 ? 30 :25,
                width: 140,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                child:  Center(
                  child: Text(
                    'Become a Member ',
                    style: GoogleFonts.forum(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height > 950 ? 16 :MediaQuery.of(context).size.height > 850 ? 15 : 13,
                fontWeight: FontWeight.bold,
              ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
