import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MyHomePage(
      
     
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  
 // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 List<String> images=[
"assets/blue.jpeg",
"assets/dog.jpeg",
"assets/website1.jpeg"
 ];
  

  
  // }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(child:
     MaterialApp(
      home: Scaffold(
        body:CarouselSlider( options: CarouselOptions(
          height: 200.0,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: .9,
          autoPlayAnimationDuration: Duration(milliseconds: 400),
        ),
        items: images
        .map((e) => Image.asset(
          e,
          fit: BoxFit.cover,
        ),).toList()
        
        ),

        
      
        ),
      ));
       

  }}