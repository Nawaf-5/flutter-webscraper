// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:webscraper/custom_card.dart';
import 'package:webscraper/utilities/constants.dart';

import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchURL = '';
  String searchItem = '';

  List<String> result = [];

  void scraper(String url, String tag) async {
    if (url != '' && tag != '') {
      http.Response response = await http.get(Uri.parse(url));

      dom.Document document = parser.parse(response.body);
      setState(() {
        document.getElementsByClassName(tag).forEach((dom.Element element) {
          result.add(element.text);
        });
        document.getElementsByTagName(tag).forEach((dom.Element element) {
          result.add(element.text);
        });
        if (result.isEmpty) {
          result.add('No such element exists!\nTry with a different tag/class');
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
                          });
                        },
                      ),
                      const SizedBox(height: 15),
                      TextField(
                        onChanged: (v) {
                          setState(() {
                            searchItem = v;
                          });
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tag or Class',
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
                              result = [];
                              scraper(searchURL, searchItem);
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
                      children: [
                        for (String s in result)
                          Text(
                            s,
                            style: TextStyle(
                              fontSize: resultsFontSize,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// if (document.firstChild != null) {
//         print('hi naw');
//         document.getElementsByClassName(tag).forEach((dom.Element element) {
//           result.add(element.text);
//           return;
//         });
//       } else if (document.firstChild != null) {
//         print('hi af');
//         document.getElementsByTagName(tag).forEach((dom.Element element) {
//           result.add(element.text);
//           return;
//         });
//       } else {
//         result.add(
//             'No such element exists!\nTry again with a different tag/class');
//       }