import 'package:hive/hive.dart';
part '';
@HiveType(typeId: 1)
class notemodel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String desc;

  notemodel({required this.title, required this.desc, this.id});
}
