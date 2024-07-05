import 'package:base64_tool/objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ObjectBoxHelper {
  ObjectBoxHelper._create(this.store);

  late final Store store;

  static Future<ObjectBoxHelper> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(
      directory: p.join(docsDir.path, 'base64_tool_data'),
    );
    print(p.join(docsDir.path, 'base64_tool_data'));
    return ObjectBoxHelper._create(store);
  }
}
