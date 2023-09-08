import 'package:quiver/strings.dart';
import'package:tp1/tools/TextTools.dart';
import'package:tp1/tools/FileReader.dart';



class Tree {
  String word;
  Tree? rightT;
  Tree? leftT;

  //int count = 0 ;

  List<SearchResult> result = [];

  Tree(this.word) {}

}
  insertInTree(Tree? T, word, filename) {
    if (T == null) {
      Tree T = Tree(word);
      T.result.add(SearchResult('', word, 1));
      return T;
    } else {
      if (compareIgnoreCase(word, T.word) < 0) {
        T.rightT = insertInTree(T.rightT, word, filename);
      } else if (compareIgnoreCase(word, T.word) > 0) {
        T.leftT = insertInTree(T.leftT, word, filename);
      } else if (compareIgnoreCase(word, T.word) == 0) {
        int i = T.result.length;
        T.result.add(SearchResult('', word, (i + 1)));
      }
    }
    return T;
  }


  walkTree(Tree? T, void action(String word)) async {
    if (T == null) {
      return null;
    } else {
      walkTree(T.rightT, action);
      action(T.word);
      walkTree(T.leftT, action);
    }
  }

  findInTree(Tree? T, String wordF, List<SearchResult> result) async {
    if (T != null) {
      findInTree(T.rightT, wordF, result);
      if ((compareIgnoreCase(T.word, wordF) == 0)) {
        result.addAll(T.result);
      }
      findInTree(T.leftT, wordF, result);
    }
  }
