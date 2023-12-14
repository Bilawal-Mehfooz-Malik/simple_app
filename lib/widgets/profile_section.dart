import 'package:flutter/material.dart';
import 'package:simple_app/data/home_data.dart';

class ProfileImageSection extends StatefulWidget {
  const ProfileImageSection({super.key});

  @override
  State<ProfileImageSection> createState() => _ProfileImageSectionState();
}

class _ProfileImageSectionState extends State<ProfileImageSection> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Profile Picture
        SizedBox(
          height: 350,
          width: double.infinity,
          child: Image.asset(profilePictures[_index], fit: BoxFit.cover),
        ),

        // Left Previous Navigation
        Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          child: _index > 0
              ? IconButton(
                  icon: const Icon(
                    Icons.navigate_before,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _index--;
                    });
                  },
                )
              : const SizedBox(),
        ),

        // Right Next Navigation
        Positioned(
          top: 0,
          right: 0,
          bottom: 0,
          child: _index < 3
              ? IconButton(
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _index++;
                    });
                  },
                )
              : const SizedBox(),
        )
      ],
    );
  }
}
