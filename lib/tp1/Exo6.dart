import 'package:tp1/tools/FileReader.dart' ;
import 'package:tp1/tools/TextTools.dart' ;


exo6(dir) async {
  var dirlist;
  dirlist = await walkDirectory(dir,(path) {
    //print(path);
  });
  print(dirlist.length);
}