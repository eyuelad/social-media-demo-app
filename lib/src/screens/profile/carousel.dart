import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<String> images;
  final double height;

  Carousel({@required this.images, @required this.height});
  
  Widget build(BuildContext context) {
    return  CarouselSlider(
      options: CarouselOptions(
        height: height
      ),
      // enableInfiniteScroll: false,
      items: images.map((image) =>
        Container(
          // constraints: BoxConstraints.expand(),
          color: Colors.black12,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          )
        )
      ).toList()
    );
  }
}