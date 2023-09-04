import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
        child: const Text(
          "Our Team",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            child: Image.asset(
              'assets/GDSC left.png',
              height: 70,
              width: 70,
            ),
          ),
          Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 0, 0, 0), // Border color
                width: 0.5, // Border width
              ),
            ),
            child: ClipOval(
                child: Image.network(
              'https://avatars.githubusercontent.com/u/76648609?v=4',
              fit: BoxFit.cover,
            )),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 125,
            width: 125,
            child: ClipOval(
                child: Image.asset(
              'assets/sahil.jpg',
              fit: BoxFit.cover,
            )),
          ),
          Image.asset(
            'assets/GDSC right.png',
            height: 70,
            width: 70,
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Row(
        children: [
          SizedBox(
            width: 100,
          ),
          Text(
            "Sahil Ambure",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            width: 50,
          ),
          Text(
            "Sahil Bodke",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Row(
        children: [
          SizedBox(
            width: 130,
          ),
          Text(
            "Lead",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 92,
          ),
          Text(
            "Co-Lead",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const SizedBox(
            width: 85,
          ),
          SizedBox(
              height: 40,
              width: 40,
              child: ClipOval(child: Image.asset('assets/git.png'))),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/linked.png'))),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/twitter.jpeg'))),
          const SizedBox(
            width: 35,
          ),
          SizedBox(
              height: 40,
              width: 40,
              child: ClipOval(child: Image.asset('assets/git.png'))),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/linked.png'))),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(child: Image.asset('assets/twitter.jpeg'))),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 2.0,
          width: 300,
          color: Colors.grey,
        ),
      ]),
      SizedBox(
        height: 25,
      ),
      SizedBox(
        height: 300,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15), // Adjust the horizontal spacing
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 241, 228, 228),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/GDSC left.png',
                            height: 70,
                            width: 70,
                          ),
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                          ),
                          Image.asset(
                            'assets/GDSC right.png',
                            height: 70,
                            width: 70,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Name",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Post",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 4,
                      ),
                      Row(children: [
                        const SizedBox(
                          width: 93,
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
                      ]),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            width: 220,
                          ),
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueAccent),
                            child: const Center(
                              child: Text(
                                "Team",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      )
    ]));
  }
}
