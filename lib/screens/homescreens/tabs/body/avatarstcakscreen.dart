import 'package:flutter/material.dart';

class AvatarStackDemo extends StatelessWidget {
  const AvatarStackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 20.0,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img/profile.jpeg'),
              ),
            ),
            Positioned(
              left: 40.0,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img/profile2.jpeg'),
              ),
            ),
            Positioned(
              left: 60.0,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img/profile1.jpeg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
