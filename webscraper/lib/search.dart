// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:webscraper/custom_card.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CustomCard(
          height: 220,
          rTopLeft: 12,
          rBottomLeft: 12,
          rBottomRight: 12,
          rTopRight: 12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'URL to search',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    fillColor: Colors.black26,
                    filled: true,
                    hintText: 'Paste the URL here!',
                  ),
                ),
                const SizedBox(height: 15),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Tag or ID',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    fillColor: Colors.black26,
                    filled: true,
                    hintText: 'e.g. div, p, h1, etc...',
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 51,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print('LOL');
                      });
                    },
                    child: Text('Search'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
