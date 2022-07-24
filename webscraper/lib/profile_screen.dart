import 'package:flutter/material.dart';
import 'package:webscraper/custom_card.dart';
import 'package:webscraper/utilities/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void changeFontSizeMinus() async {
    setState(() {
      if (resultsFontSize >= 14) {
        resultsFontSize -= 2;
      } else {
        resultsFontSize = 12;
      }
    });
  }

  void changeFontSizePlus() async {
    setState(() {
      if (resultsFontSize <= 54) {
        resultsFontSize += 2;
      } else {
        resultsFontSize = 56;
      }
    });
  }

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
                    const Text(
                      'Result font size:',
                      style: kTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              changeFontSizeMinus();
                            },
                            child: const Text('-'),
                          ),
                          Text(
                            '$resultsFontSize',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 25),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              changeFontSizePlus();
                            },
                            child: const Text('+'),
                          ),
                        ],
                      ),
                    ),
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
