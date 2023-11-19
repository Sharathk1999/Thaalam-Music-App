import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:thaalam_music_app/config/colors.dart';

class TrendingSongSlider extends StatelessWidget {
  const TrendingSongSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> trendingSliderItems = [
      Container(
        padding: const EdgeInsets.only(right: 25,top: 20,bottom: 10),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(50),
          image:const DecorationImage(
              image: AssetImage(
                'assets/images/thaalam_bg_img.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Row(
          children: [
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:const Text('Trending songs'),
                    ),
                  ],
                ),
               const Spacer(),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alone",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                ),
               const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alen Walker",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
              ],
            ),),
          ],
        ),
      )
    ];
    return CarouselSlider(
        items: trendingSliderItems,
        options: CarouselOptions(
          height: 280,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 8),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, reason) {},
          scrollDirection: Axis.horizontal,
        ));
  }
}
