import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Name Text
            Text(
              'Bilawal Mehfooz',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            //Location Text
            Text(
              'Kotli, Azad Kashmir',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
        Spacer(),

        // Star Icon
        Icon(
          Icons.star,
          size: 26,
          color: Color.fromARGB(255, 244, 125, 21),
        ),
        Text('41', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
