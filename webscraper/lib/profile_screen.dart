import 'package:flutter/material.dart';
import 'package:webscraper/custom_card.dart';
import 'package:webscraper/utilities/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            CustomCard(
              height: 150,
              rTopLeft: 12,
              rBottomLeft: 12,
              rBottomRight: 12,
              rTopRight: 12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Result font size:',
                      style: kTextStyle,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
