import 'package:flutter/material.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:test_app/pages/profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Blogs extends StatelessWidget {
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
            padding: EdgeInsets.only(
                left: 20.0), // Add padding to the left of the title
            child: Text(
              'Blogs',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 20), // Add space between content and list
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 20), // Add space between list tiles
              itemCount: 3,

              itemBuilder: (context, index) {
                // Define the titles for each ListTile
                List<String> titles = [
                  "Meet Rina: A Stage 2 Breast Cancer Survivor from India",
                  "Breast cancer: 'I am a stronger person today'",
                  "Breast cancer survivor finds new calling as a well-being coach in India",
                ];

                List<String> subtitles = [
                  "Rina: Stage 2",
                  "Simran: HER2-Positive",
                  "Shreshta: Stage 3",
                ];

                List<String> imagePaths = [
                  "assets/logob1.png",
                  "assets/logob1.png",
                  "assets/logob3.png",
                ];

                return Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    color: const Color(0xFFFFCFDF), // Set background color
                  ),
                  child: ListTile(
                    title: Text(titles[index]), // Set title based on index
                    subtitle: Text(subtitles[index]),
                    leading: ClipOval(
                      child: Image.asset(
                        imagePaths[
                            index], // Set path of the image in the assets folder
                        width: 40, // Set width of the image
                        height: 40, // Set height of the image
                      ),
                    ), // Example icon // Example icon
                    trailing: const Icon(Icons.arrow_forward), // Example icon
                    onTap: () {
                      // Action when ListTile is tapped
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(
                left: 20.0), // Add padding to the left of the title
            // Add padding to the left of the title
            child: Text(
              'Podcasts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),

          // Podcasts
          const SizedBox(height: 20), // Add space between content and list
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 10), // Add space between list tiles
              itemCount: 3,
              itemBuilder: (context, index) {
                // Define the titles for each ListTile
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
                    color: Color.fromARGB(
                        255, 255, 255, 255), // Set background color
                  ),
                  child: ListTile(
                    title: Text(titles[index]), // Set title based on index
                    subtitle: Text(subtitles[index]),
                    leading: ClipOval(
                      child: Image.asset(
                        imagePaths[
                            index], // Set path of the image in the assets folder
                        width: 40, // Set width of the image
                        height: 40, // Set height of the image
                      ),
                    ), // Example icon // Example icon
                    trailing: InkWell(
                      onTap: () async {
                        final url = spotifyUrls[
                            index]; // Get the Spotify URL based on the index
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Icon(Icons.arrow_forward), // Example icon
                    ),
                  ),
                );
              },
            ),
          ),

          // Survivor Stories
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(
                left: 20.0), // Add padding to the left of the title
// Add padding to the left of the title
            child: Text(
              'Survivor Stories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),

          // Survivor Stories
          const SizedBox(height: 10), // Add space between content and list
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 10), // Add space between list tiles
              itemCount: 3,
              itemBuilder: (context, index) {
                // Define the titles for each ListTile
                List<String> titles = [
                  "3 Breast Cancer Survivors Share Their Stories",
                  "Mrs. Jumana shares her survival story",
                  "2 time Breast Cancer Survivor, Ms. Arti shares her story",
                ];

                List<String> subtitles = [
                  "Mayo Clinic",
                  "Manipal Hospitals",
                  "Sahyadri Hospitals",
                ];

                List<String> imagePaths = [
                  "assets/survivor1.jpg",
                  "assets/survivor2.jpg",
                  "assets/survivor3.jpg",
                ];

                List<String> youtubeUrls = [
                  "https://www.youtube.com/watch?v=q8j_vZRZKx0",
                  "https://www.youtube.com/watch?v=Pc1vPFhQGPE",
                  "https://www.youtube.com/watch?v=DxNFq3JngPY",
                ];

                return Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFFFCFDF), // Set background color
                  ),
                  child: ListTile(
                    title: Text(titles[index]), // Set title based on index
                    subtitle: Text(subtitles[index]),
                    leading: ClipOval(
                      child: Image.asset(
                        imagePaths[
                            index], // Set path of the image in the assets folder
                        width: 40, // Set width of the image
                        height: 40, // Set height of the image
                      ),
                    ), // Example icon // Example icon
                    trailing: InkWell(
                      onTap: () async {
                        final url = youtubeUrls[
                            index]; // Get the Spotify URL based on the index
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: const Icon(Icons.arrow_forward), // Example icon
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: const Color(0XFFFF55AB),
        icons: const [Icons.book, Icons.home, Icons.person],
        activeIndex: 0,
        activeColor: Colors.white,
        inactiveColor: Colors.white,
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