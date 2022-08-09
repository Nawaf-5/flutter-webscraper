import 'package:flutter/material.dart';
import 'package:webscraper/nav_bar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:webscraper/recent_storage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(RecentSearchesAdapter());
  await Hive.openBox<RecentSearches>('recent_searches');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const NavBar(),
    );
  }
}
