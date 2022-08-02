import 'package:flutter/material.dart';
import 'custom_card.dart';
import 'utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.watch_later_outlined),
                  SizedBox(width: 5),
                  Text(
                    'Recent searches',
                    style: TextStyle(
                      fontSize: kFontSizeTitle,
                      fontFamily: kFontFam,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomCard(
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Searched 1',
                        style: TextStyle(
                          fontFamily: kFontFam,
                          fontSize: kFontSizeSub,
                        ),
                      )
                    ],
                  ),
                ),
                rTopLeft: 12,
                rBottomLeft: 12,
                rBottomRight: 12,
                rTopRight: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
