import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeTopSliderWidget extends StatelessWidget {
  const HomeTopSliderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/one.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/two.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/three.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/four.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/five.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/six.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/seven.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            pauseAutoPlayOnTouch: true,
            height: 170.0,
            enlargeCenterPage: false,
            autoPlay: true,
            aspectRatio: 16 / 2,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.86,
          ),
        ),
      ],
    );
  }
}
