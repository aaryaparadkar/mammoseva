import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SelfExamination extends StatelessWidget {
  final List<String> imagePaths = const [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 225, 229, 1), // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Self Examination Steps',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: ImageCarousel(
                  imagePaths: imagePaths,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths;

  ImageCarousel({required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imagePaths.length,
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 7),
        // You can customize other carousel options here
      ),
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.fitHeight,
              height: 200, // Adjust the height as needed
            ),
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SelfExamination(),
  ));
}
