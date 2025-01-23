import 'package:flutter/material.dart';

class TafsirHeader extends StatelessWidget {
  const TafsirHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFFFBEDD3),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {},
      ),
      title: const Text(
        'Al-Faatiha',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings, color: Colors.black),
          onPressed: () {},
        ),
      ],
      floating: false,
      pinned: true,
    );
  }
}
