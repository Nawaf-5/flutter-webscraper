import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:webscraper/recent_storage.dart';
import 'boxes.dart';
import 'custom_card.dart';
import 'utilities/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'recent_storage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> recents = [];

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

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
                    'History',
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Note: Place holder text',
                        style: kTextStyle,
                      ),
                      Text(
                        'qoutestoscrape.com',
                        style: kTextStyle,
                      ),
                      Text(
                        'alarabiya.com/en/sports',
                        style: kTextStyle,
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
