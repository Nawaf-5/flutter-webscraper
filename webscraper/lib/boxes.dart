import 'package:hive/hive.dart';
import 'package:webscraper/recent_storage.dart';

class Boxes {
  static Box<RecentSearches> getRecentSearches() =>
      Hive.box<RecentSearches>('recent_searches');
}
