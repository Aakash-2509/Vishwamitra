import 'package:flutter/material.dart';
import 'package:vishwamitra_lang_screen/utils/colors.dart';

class AvatarStackDemo extends StatelessWidget {
  final List<String> avatarImages = [
    'assets/img/profile.jpeg',
    'assets/img/profile2.jpeg',
    // Add more avatar image paths as needed
  ];

  AvatarStackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: _buildAvatarStack(),
        ),
      ),
    );
  }

  List<Widget> _buildAvatarStack() {
    List<Widget> avatarWidgets = [];
    double initialLeft = 20.0;
    double spacing = 15.0;

    for (int i = 0; i < avatarImages.length; i++) {
      avatarWidgets.add(
        Positioned(
          left: initialLeft + i * spacing,
          child: CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(avatarImages[i]),
          ),
        ),
      );
    }

    // Add an additional avatar with an icon for demonstration
    avatarWidgets.add(
      Positioned(
        left: initialLeft + avatarImages.length * spacing,
        child: const CircleAvatar(
          backgroundColor: ColorConst.blueColor,
          radius: 15,
          child: Icon(
            Icons.exposure_plus_2,
            color: ColorConst.whiteColor,
            size: 20,
          ),
        ),
      ),
    );

    return avatarWidgets;
  }
}
