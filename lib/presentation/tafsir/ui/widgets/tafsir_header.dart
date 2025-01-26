import 'package:flutter/material.dart';
import 'package:ui_design_ai/presentation/main/screens/main_screen.dart';

class TafsirHeader extends StatelessWidget {
  const TafsirHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFFFBEDD3),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NavBarPage()),
          );
        },
      ),
      title: const Text(
        'Al-Faatiha',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavBarPage()),
            );
          },
        ),
      ],
      floating: false,
      pinned: true,
    );
  }
}
