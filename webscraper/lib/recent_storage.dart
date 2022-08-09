import 'package:hive/hive.dart';
part 'recent_storage.g.dart';

@HiveType(typeId: 0)
class RecentSearches extends HiveObject {
  @HiveField(0)
  late String recent;
}
