import 'package:flutter/material.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:test_app/pages/profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class Blogs extends StatelessWidget {
  get youtubeUrls => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEFB4C8),
      appBar: AppBar(
        backgroundColor: const Color(0XFFEFB4C8),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Text.rich(
          TextSpan(
            text: 'Resources',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Apply bold style
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Blogs & Survivor Stories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: 6, // Combine the count for blogs and survivor stories

              itemBuilder: (context, index) {
                List<String> titles = [
                  "Meet Rina: A Stage 2 Breast Cancer Survivor from India",
                  "Breast cancer: 'I am a stronger person today'",
                  "Breast cancer survivor finds new calling as a well-being coach in India",
                  "3 Breast Cancer Survivors Share Their Stories",
                  "Mrs. Jumana shares her survival story",
                  "2 time Breast Cancer Survivor, Ms. Arti shares her story",
                ];

                List<String> subtitles = [
                  "Rina: Stage 2",
                  "Simran: HER2-Positive",
                  "Shreshta: Stage 3",
                  "Mayo Clinic",
                  "Manipal Hospitals",
                  "Sahyadri Hospitals",
                ];

                List<String> imagePaths = [
                  "assets/logob1.png",
                  "assets/logob1.png",
                  "assets/logob3.png",
                  "assets/survivor1.jpg",
                  "assets/survivor2.jpg",
                  "assets/survivor3.jpg",
                ];

                if (index < 3) {
                  // Display blogs
                  return Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFCFDF),
                    ),
                    child: ListTile(
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: ClipOval(
                        child: Image.asset(
                          imagePaths[index],
                          width: 40,
                          height: 40,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        // Action when ListTile is tapped
                      },
                    ),
                  );
                } else if (index < 6) {
                  // Display survivor stories
                  return Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFCFDF),
                    ),
                    child: ListTile(
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: ClipOval(
                        child: Image.asset(
                          imagePaths[index],
                          width: 40,
                          height: 40,
                        ),
                      ),
                      trailing: InkWell(
                        onTap: () async {
                          final url = youtubeUrls[index];
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Podcasts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: 3,
              itemBuilder: (context, index) {
                List<String> titles = [
                  "The Breast Cancer Podcast",
                  "The Breast Cancer Recovery Coach",
                  "Dancing through the pain of a Breast Cancer Diagnosis with Samantha Harris",
                ];

                List<String> subtitles = [
                  "Dr. Deepa Halaharvi",
                  "Laura Lummer",
                  "All Talk Oncology Podcast",
                ];

                List<String> imagePaths = [
                  "assets/pod1.jpg",
                  "assets/pod2.jpg",
                  "assets/pod3.jpg",
                ];

                List<String> spotifyUrls = [
                  "https://open.spotify.com/show/09Sp2oiAsmsSeyeXEKRYIa?si=zkkA7mvCTq6CJ88GhPEuhg&nd=1&dlsi=87ae9b6d77e44066",
                  "https://open.spotify.com/show/6O1n0AC2tuK5SaFFHCK13j?si=yx0gkOWISLyAoc_nVuxaKw&nd=1&dlsi=e7ac0e21800a4189",
                  "https://open.spotify.com/episode/6vB5FlSK1rhBVPNAaAgOLj?si=FlhFQhFYRzSRvL3btXe-hg&nd=1&dlsi=b379db70062d4b9e",
                ];

                return Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: ListTile(
                    title: Text(titles[index]),
                    subtitle: Text(subtitles[index]),
                    leading: ClipOval(
                      child: Image.asset(
                        imagePaths[index],
                        width: 40,
                        height: 40,
                      ),
                    ),
                    trailing: InkWell(
                      onTap: () async {
                        final url = Uri.encodeFull(spotifyUrls[index]);
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Color(0XFFFF55AB),
        icons: [Icons.book, Icons.home, Icons.person],
        activeIndex: 0,
        activeColor: Colors.white,
        inactiveColor: Colors.white,
        iconSize: 30,
        gapLocation: GapLocation.none,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blogs()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
              break;
          }
        },
      ),
    );
  }
}
