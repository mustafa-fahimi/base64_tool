import 'package:objectbox/objectbox.dart';

@Entity()
class Base64Model {
  @Id()
  int id;
  String rawText;
  String convertedText;

  Base64Model({
    this.id = 0,
    required this.rawText,
    required this.convertedText,
  });
}
