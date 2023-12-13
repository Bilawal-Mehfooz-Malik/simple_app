import 'package:flutter/material.dart';
import 'package:simple_app/widgets/custom_contact_icon.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomContactIcon(icon: Icons.call, text: 'CALL'),
          CustomContactIcon(icon: Icons.send, text: 'ROUTE'),
          CustomContactIcon(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}
