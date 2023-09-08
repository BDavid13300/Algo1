import 'package:quiver/strings.dart';
import'package:tp1/tools/TextTools.dart';
import'package:tp1/tools/FileReader.dart';
import 'package:tp1/searchengine/Tree.dart';

class Index{
  Tree? T ;

  build(dir) async {
    await walkDirectory(dir, (path) {
      FileReader file = FileReader(path);
      while (!file.isEndOfFile()) {
        String? word = readWord(file);
        if (word != null )
          T = insertInTree(T, word, path);
      }
    });
  }

  find(String word){
    List<SearchResult> result = [];
    findInTree(T, word, result);
    return result;
  }

}



