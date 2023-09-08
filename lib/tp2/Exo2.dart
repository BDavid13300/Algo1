import'package:tp1/tools/TextTools.dart';
import'package:tp1/tools/FileReader.dart';
import'package:tp1/searchengine/Tree.dart';

exo2 ()async{
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
  findInTree(tree, "BSD", result);
  print(result);
}