// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:webscraper/custom_card.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchURL = '';
  String searchItem = '';

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
                TextField(
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'URL to search',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    fillColor: Colors.black26,
                    filled: true,
                    hintText: 'Paste the URL here!',
                  ),
                  onChanged: (v) {
                    setState(() {
                      searchURL = v;
                      print(searchURL);
                    });
                  },
                ),
                const SizedBox(height: 15),
                TextField(
                  onChanged: (v) {
                    setState(() {
                      searchItem = v;
                      print(searchItem);
                    });
                  },
                  decoration: const InputDecoration(
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
                const SizedBox(height: 15),
                ElevatedButton(
                  style: const ButtonStyle(
                    alignment: Alignment.center,
                  ),
                  onPressed: () {
                    setState(() {
                      print(searchURL + ' What??');
                    });
                  },
                  child: const Text('Search'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// const SizedBox(height: 15),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   height: 51,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         print('LOL');
//                       });
//                     },
//                     child: const Text('Search'),
//                   ),
//                 )