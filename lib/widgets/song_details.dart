import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaalam_music_app/config/colors.dart';

class SongDetailsWidget extends StatelessWidget {
  const SongDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
                children: [
                  Icon(
                    FontAwesomeIcons.play,
                    color: whiteColor.withOpacity(0.5),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Played 10 times',
                    style: TextStyle(
                      fontSize: 16,
                      color: whiteColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            const  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text(
                    'Only the beginning',
                    style: TextStyle(
                      fontSize: 20,
                      color: whiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.download,
                        color: whiteColor,
                      ),
                      const SizedBox(width: 10,),
                     
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text(
                    'Alan Walker',
                    style: TextStyle(
                      fontSize: 18,
                      color: whiteColor.withOpacity(0.5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                
                ],
              )
      ],
    );
  }
}