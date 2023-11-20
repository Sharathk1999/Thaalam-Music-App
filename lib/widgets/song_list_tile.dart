// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thaalam_music_app/config/colors.dart';

class SongListTile extends StatelessWidget {
  final String songName;
  final VoidCallback onTap;
  const SongListTile({
    super.key,
    required this.songName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        splashColor: primaryColor.withOpacity(0.3),
        onTap:onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: primaryColor.withOpacity(0.12)),
          
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              const Icon(
                FontAwesomeIcons.play,
                color: whiteColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  songName,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
