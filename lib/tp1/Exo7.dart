import 'package:tp1/tools/FileReader.dart' ;
import 'package:tp1/tools/TextTools.dart' ;


exo7(dir) async {
  var result = await search(dir, "vente");
  result.forEach(print);
}