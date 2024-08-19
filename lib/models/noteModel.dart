import 'package:hive/hive.dart';
part 'noteModel.g.dart'; // here i do this first so it gives me error so when i

//generate code it that the name of file (noteModel)
@HiveType(typeId: 0) //type id can 0 to 255 for all classes
class NoteModel extends HiveObject {
  @HiveField(0) //Hivefiled is uniqe for this class note all classes
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
// flutter packages pub run build_runner build
//1-after i give hime Hivetype and hiveField
//2-give hime part 'fileName.g.dart';
//3-flutter packages pub run build_runner build (terminal)
//4-it will generate file in ur forlder named fileName.g.dart
