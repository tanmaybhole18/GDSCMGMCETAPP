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
      const Expanded(flex: 3, child: Heading()),
      const Expanded(flex: 3, child: AboutUs()),
      const Expanded(flex: 1,child: SocialMediaLinks()),
      const Expanded(flex: 4,child: JoinUs()),
      Expanded(flex: 1, child: Container(color: const Color.fromARGB(255, 129, 201, 149),)),
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
        child:   Row(
          children: [
          const Expanded(flex: 5, child: Text("Google Devloper\nStudent Clubs",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,
           
           //fontFamily: 
           
           ),)),
          const Expanded(flex:2, child: Spacer()),
          Expanded(flex:2, child: Image.asset('''assets/GDSC LOGO.png'''),),
          const Expanded(flex:2, child: Spacer()),
            //const Text("Google Devloper\nStudent Clubs",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            //const Spacer(),
            //Expanded
            //Text('<>',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),)
            //Image.asset('''assets/GDSC LOGO.png'''),
            ],
        ));
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({
    super.key,
  });
  final String aboutUs =
      //'At the Google Student Council Group, we are committed to fostering a dynamic and inclusive community that empowers students to innovate, collaborate, and make a positive impact on their campuses and beyond. Our vision is to connect students with a passion for technology and education, providing them with opportunities to grow, lead, and contribute to a brighter future.';
      'At the Google Student Council Group, we aim to create an inclusive community where students can innovate, collaborate, and make a positive impact on their campuses and beyond. We connect students passionate about technology and education, offering growth, leadership, and a brighter future.';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Expanded(flex: 1, child: Text('About Us',style: TextStyle(fontWeight: FontWeight.bold),),),
        const Expanded(flex: 1,child: SizedBox(),),
        Expanded(flex: 5,child: Text(aboutUs,style: const TextStyle(fontWeight: FontWeight.w500,),)),
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
            socialMediaLogo('https://www.instagram.com/' , Ionicons.logo_instagram),
            socialMediaLogo('https://www.instagram.com/' , Ionicons.logo_twitter),
            socialMediaLogo('https://www.instagram.com/' , Ionicons.logo_youtube),
            socialMediaLogo('https://www.instagram.com/' , Ionicons.logo_discord),
            socialMediaLogo('https://www.instagram.com/' , Ionicons.logo_facebook)
            ,          ],
        )); // profile
  }

  GestureDetector socialMediaLogo(final String url,  final IconData icon_) {
    
    return GestureDetector(
            child: Container(
            height: 50,
            width: 50,
            decoration:  BoxDecoration(
                color: Colors.grey[300], shape: BoxShape.circle),
                child: Icon(icon_),
          ),
          onTap: (){
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
      'By becoming a part of the Google Student Council Group, you ll have the opportunity to:\n\n\u2022 Expand your knowledge of cutting-edge technology.\n\u2022 Build a strong professional network. \n\u2022 Gain leadership experience.\n\u2022 Make a positive impact on your campus and community.';
      //\nBe part of a supportive and diverse community of like-minded students.
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 129, 201, 149),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Expanded(flex: 1, child: Text('Join Our Community !',style: TextStyle(fontWeight: FontWeight.bold),),),
            Expanded(flex: 3, child: Text(joinUsText,style: const TextStyle(fontWeight: FontWeight.w500,),),),
            //Expanded(flex: 1, child: const SizedBox(),),
            Expanded(flex: 1, child: Container(
              alignment: Alignment.centerRight,
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                child: const Text(
                  'Become a Member ',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            )),
            
            
            
          ],
        ));
  }
}
