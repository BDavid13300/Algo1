import 'package:tp1/searchengine/Tree.dart';
import 'package:tp1/tp1/tp1.dart';
import 'package:test/test.dart';
import 'package:tp1/tools/FileReader.dart';
import 'package:tp1/tools/TextTools.dart';


main () {
  test("exo1", () {
    Tree? tree = null;
    tree = insertInTree(tree, "Posix", "");
    tree = insertInTree(tree, "BSD", "");
    tree = insertInTree(tree, "ANSI", "");
    tree = insertInTree(tree, "Win32", "");
    tree = insertInTree(tree, "OpenGL", "");
    tree = insertInTree(tree, "BSD", "");
    tree = insertInTree(tree, "DirectDraw", "");
    tree = insertInTree(tree, "BSD", "");
    tree = insertInTree(tree, "SDL", "");
    var words = <String>[];
    walkTree(tree, (word) => words.add(word));
    expect(words.length, 7);
    expect(words.elementAt(0), "ANSI");
    expect(words.elementAt(1), "BSD");
    expect(words.elementAt(2), "DirectDraw");
    expect(words.elementAt(3), "OpenGL");
    expect(words.elementAt(4), "Posix");
    expect(words.elementAt(5), "SDL");
    expect(words.elementAt(6), "Win32");
  });

  test("exo2",(){
    Tree? tree = null;
    tree = insertInTree(tree, "Posix", "");
    tree = insertInTree(tree, "BSD", "");
    tree = insertInTree(tree, "ANSI", "");
    tree = insertInTree(tree, "Win32", "");
    tree = insertInTree(tree, "OpenGL", "");
    tree = insertInTree(tree, "BSD", "");
    tree = insertInTree(tree, "DirectDraw", "");
    tree = insertInTree(tree, "BSD", "");
    tree = insertInTree(tree, "SDL", "");
    List<SearchResult> result = [];
    List<SearchResult> result1 = [];
    findInTree(tree,"Posix", result);
    result1.add(SearchResult('',"Posix", 1));
    String s1 = result.toString();
    String s2 = result1.toString();
    expect(s1,s2);
    result = [];
    result1 = [];
    findInTree(tree,"BSD", result);
    result1.add(SearchResult('',"BSD", 1));
    result1.add(SearchResult('',"BSD", 2));
    result1.add(SearchResult('',"BSD", 3));
    s1 = result.toString();
    s2 = result1.toString();
    expect(s1,s2);
    result = [];
    result1 = [];
    findInTree(tree,"OpenGL", result);
    result1.add(SearchResult('',"OpenGL", 1));
    s1 = result.toString();
    s2 = result1.toString();
    expect(s1,s2);
  });
}