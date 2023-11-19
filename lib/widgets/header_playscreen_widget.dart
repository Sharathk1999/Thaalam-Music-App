import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaalam_music_app/config/colors.dart';

class HeaderPlayScreenWidget extends StatelessWidget {
  const HeaderPlayScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          padding:const EdgeInsets.all(10),
          child:const Icon(FontAwesomeIcons.caretLeft),
        ),
         Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          padding:const EdgeInsets.all(10),
          child:const Icon(FontAwesomeIcons.gear,size: 20,),
        ),
      ],
    );
  }
}