// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:webscraper/custom_card.dart';
import 'package:webscraper/utilities/constants.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchURL = '';
  String searchItem = '';
  // double resultsFontSize = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomCard(
              height: 205,
              rTopLeft: 12,
              rBottomLeft: 12,
              rBottomRight: 12,
              rTopRight: 12,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
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
                    //
                    const SizedBox(height: 15),
                    //Search Button
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 33,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          alignment: Alignment.center,
                        ),
                        onPressed: () {
                          setState(() {
                            print(searchURL + ' Test');
                          });
                        },
                        //child: const Text('Search'),
                        child: const Text('Search'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            CustomCard(
              height: 415,
              rTopLeft: 12,
              rBottomLeft: 12,
              rBottomRight: 12,
              rTopRight: 12,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: resultsFontSize),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: resultsFontSize),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: resultsFontSize),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: resultsFontSize),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: resultsFontSize),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: resultsFontSize),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: resultsFontSize),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(fontSize: resultsFontSize),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
