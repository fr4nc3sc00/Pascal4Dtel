import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<String> images =  const[
  "lib/assets/download.png",
  "lib/assets/download1.jpg",
  "lib/assets/download2.jpg",
  "lib/assets/download3.jpg",
];

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
            height: 400.0,
            autoPlay: true),
            itemBuilder: (context, index, realindex) {
              return Container(
                child: Image.asset(images[index]),
              );
            },
)
        ],
      ),
    );
  }
}