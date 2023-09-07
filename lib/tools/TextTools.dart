import 'dart:io';

import 'package:tp1/tools/FileReader.dart' ;

readWord(FileReader Fichier){
  String s = "";
  String c = "";
  if (!Fichier.isEndOfFile()){
    c = Fichier.readNext();
  }
  while ((c != " ") && (c != ".") && (c != ",") && (c != ":") && (c !=
      ";") && (c != "\n") && (c != "(") && (c != ")") ) {

    s = (s + c);
    if ((Fichier.isEndOfFile())) {
      break;
    }
    c = Fichier.readNext();
  }
  if (s != "") {
    return s;
  }else return null;
}

walkDirectory(dirName,void action(String path)) async{
  var Fichier = await Directory(dirName)
      .list(recursive: true)
      .where((event) => event.statSync().type == FileSystemEntityType.file)
      .map((event) => event.path).toList();
  Fichier.forEach((element) {
    action(element);
  });
  return Fichier;
}

countWord(FileReader Fichier,String Word) {
  var count = 0;
  while (!Fichier.isEndOfFile()){
    var mot = readWord(Fichier);
    if (Word == mot){
      count++;
    }
  }
  return count;
}

class SearchResult{

  String filename;
  int count;

  SearchResult(this.filename,this.count){
  }
  @override
  String toString() {
    return('$filename Nombre: $count \n');
  }
  /*@override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SearchResult &&
              runtimeType == other.runtimeType &&
              s1 == other.s1 &&
              s2 == other.s2;
  @override
  int get hashCode => s1.hashCode ^ s2.hashCode;
}*/
}

search (dir,String word) async{
  var Resultats = [];
  await walkDirectory(dir,(path) {
    FileReader Fichier = FileReader(path);
    int count = countWord(Fichier, word);
    SearchResult Result = SearchResult(path,count);
    if (count > 0)
    Resultats.add(Result);
  });

  Resultats.sort((a,b)=>b.count.compareTo(a.count));
  return Resultats;
}