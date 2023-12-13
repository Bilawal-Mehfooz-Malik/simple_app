import 'package:flutter/material.dart';
import 'package:simple_app/widgets/personal_details.dart';
import 'package:simple_app/widgets/contacts_details.dart';

const text =
    'Hello, I\'m Bilawal Mehfooz from Kotli, Azad Kashmir. I\'m currently studying Computer Systems Engineering at Mirpur University of Science & Technology. I\'m in my 5th semester, and I am a regular flutter developer.';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile picture
            Image.asset('assets/profile.jpg'),

            // Details
            const Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  PersonalDetails(),
                  ContactDetails(),

                  //bottom text
                  Text(
                    text,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 54, 54, 54),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
