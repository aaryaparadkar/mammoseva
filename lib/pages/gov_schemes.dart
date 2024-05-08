import 'package:flutter/material.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:test_app/pages/profile.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:url_launcher/url_launcher.dart';

class GovScheme extends StatelessWidget {
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
            text: 'All India Schemes',
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
              'All India Schemes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                  "Health Minister's Discretionary Grant (HMDG)",
                  "Cancer Patients Concession for Travel by Air",
                  "Health Minister's Cancer Patient Fund (HMCPF) of Rashtriya Arogya Nidhi (RAN)",
                  // "Ayushman Bharat - Pradhan Mantri Jan Arogya Yojana (AB-PMJAY)",

                ];

                List<String> subtitles = [
                  "Financial assistance varying from Rs 75,000 to Rs 1,25,000",
                  "Offered by Air India",
                  "Up to Rs 2 Lakhs assistance",
                  // "Benefit cover of upto 5 lakhs"
                ];

                List<String> imagePaths = [
                  "assets/pod1.jpg",
                  "assets/pod2.jpg",
                  "assets/pod3.jpg",
                  // "assets/pod3.jpg",
                ];

                List<String> spotifyUrls = [
                  "https://main.mohfw.gov.in/sites/default/files/4451946500hmdgappl_1_1_0.pdf",
                  "https://www.airindia.com/in/en/book/special-offers/other-concessions.html",
                  "https://main.mohfw.gov.in/sites/default/files/254789632565878966552HMCPF%20%281%29.pdf",
                  // "https://tms.pmjay.gov.in/",

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
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Maharashtra Schemes',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                  "Chief Minister's Relief Fund (CMRF)",
                  "Mahatma Jyotiba Phule Jan Arogya Yojana",
                ];

                List<String> subtitles = [
                  "Aid given is Rs 50,000 for chemotherapy & dialysis",
                  "Upto Rs. 5 Lakh per family",
                ];

                List<String> imagePaths = [
                  "assets/pod1.jpg",
                  "assets/pod2.jpg",
                ];

                List<String> spotifyUrls = [
                  "https://cmrf.maharashtra.gov.in/CMRFCitizen/pdf/medical%20form.pdf",
                  "https://www.jeevandayee.gov.in/",
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
