import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'slide_start.dart';

class SignInUpButtonScreen extends StatelessWidget {
  const SignInUpButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: const EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          aspectRatio: 16 / 9,
          viewportFraction: 1.0,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ),
        items: [3].map((e) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.symmetric(horizontal: 1.0),
                decoration: const BoxDecoration(color: Colors.amber),
                child: const Column(
                  children: [
                    // RegisterScreen(),
                    // SlideStartWidget(),
                    // SlideStartWidget(),
                    SlideStartWidget(),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
