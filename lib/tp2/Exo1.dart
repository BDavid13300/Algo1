import'package:tp1/tools/TextTools.dart';
import'package:tp1/tools/FileReader.dart';
import'package:tp1/searchengine/Tree.dart';


exo1(filename){
  FileReader Fichier = FileReader(filename);
  Tree? T = null;
  while (!Fichier.isEndOfFile()){
    String? word = readWord(Fichier);
    if (word!= null){
      T = insertInTree(T, word, filename);
    }
  }
  walkTree(T, (word) {
    print(word);
  });
}