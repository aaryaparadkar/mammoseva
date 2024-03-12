import 'package:flutter/material.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:test_app/pages/profile.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import the package

class SelfExamination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEFB4C8),
      appBar: AppBar(
        title: Text('Self Examination'),
      ),
      body: ImageCarousel(
        imagePaths: [
          'assets/c1.jpeg',
          'assets/c2.jpeg',
          'assets/c3.jpeg',
          'assets/c4.jpeg',
          'assets/c5.jpeg',
          'assets/c6.jpeg',
          'assets/c7.jpeg',
          'assets/c8.jpeg',
          'assets/c9.jpeg',
          'assets/c10.jpeg',
          'assets/c11.jpeg',
          'assets/c12.jpeg',
          'assets/c13.jpeg',
          'assets/c14.jpeg',
          'assets/c15.jpeg',
          'assets/c16.jpeg',
          'assets/c17.jpeg',
          'assets/c18.jpeg',
          'assets/c19.jpeg',
          'assets/c20.jpeg',
          'assets/c21.jpeg',
          'assets/c22.jpeg',
          'assets/c23.jpeg',
          'assets/c24.jpeg',
          'assets/c25.jpeg',
          'assets/c26.jpeg',
          'assets/c27.jpeg',
          'assets/c28.jpeg',
          'assets/c29.jpeg',
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Color(0XFFFF55AB),
        icons: [Icons.book, Icons.home, Icons.person],
        activeIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blogs()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
              // Handle tapping on the home icon
              break;
            case 2:
              // Handle tapping on the person icon
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile()));
              break;
          }
        },
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths;

  ImageCarousel({required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0), // Add padding around the CarouselSlider
      child: CarouselSlider.builder(
        itemCount: imagePaths.length,
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 7),
          // You can customize other carousel options here
        ),
        itemBuilder: (context, index, realIndex) {
          return Container(
            margin: EdgeInsets.all(8.0), // Add margin around the Container
            decoration: BoxDecoration(
              color: Colors.white, // Optional: Add background color to the container
              borderRadius: BorderRadius.circular(10.0), // Optional: Add border radius to the container
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0), // Optional: Clip image to rounded corners
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.contain, // Adjust fit property to prevent cropping
              ),
            ),
          );
        },
      ),
      
    );
    
  }
}


