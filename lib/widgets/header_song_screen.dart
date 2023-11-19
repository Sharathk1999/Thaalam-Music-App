import 'package:flutter/material.dart';

class HeaderSongScreen extends StatelessWidget {
  const HeaderSongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          't h a a l a m .',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
