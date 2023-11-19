import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaalam_music_app/config/colors.dart';

class SongListTile extends StatelessWidget {
  const SongListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: primaryColor.withOpacity(0.12)
      ),
      margin:const EdgeInsets.only(bottom: 15),
      padding:const EdgeInsets.all(15),
      child:const Row(
        children: [
          Icon(FontAwesomeIcons.play,color: whiteColor,),
           SizedBox(width: 10,),
          Text("Naa Ready",style: TextStyle(
            
            fontSize: 20,
            fontWeight: FontWeight.w500
          ),)
        ],
      ),
    );
  }
}