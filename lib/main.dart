import 'package:flutter/material.dart';
import 'package:simple_app/data/home_data.dart';
import 'package:simple_app/widgets/profile_section.dart';
import 'package:simple_app/widgets/personal_details.dart';
import 'package:simple_app/widgets/contacts_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile picture
          ProfileImageSection(),

          // Details Section
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                PersonalDetails(),
                ContactDetails(),

                //bottom text description
                Text(
                  text,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
