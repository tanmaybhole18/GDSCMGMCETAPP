import 'package:flutter/material.dart';

class Leads extends StatelessWidget {
  const Leads({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                color: const Color.fromARGB(
                    255, 0, 0, 0), // Border color
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
      const SizedBox(
        height: 5,
      ),
      const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sahil Ambure",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            width: 60,
          ),
          Text(
            "Sahil Bodke",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15),
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
              child:
                  ClipOval(child: Image.asset('assets/git.png'))),
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
          const SizedBox(
            width: 35,
          ),
          SizedBox(
              height: 40,
              width: 40,
              child:
                  ClipOval(child: Image.asset('assets/git.png'))),
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
        ],
      ),
    ]);
  }
}