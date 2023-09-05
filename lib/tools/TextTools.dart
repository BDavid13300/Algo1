import 'dart:io';

import 'package:tp1/tools/FileReader.dart' ;

readWord(FileReader Fichier){
  String s = "";
  String c = "";
  if (!Fichier.isEndOfFile()){
    c = Fichier.readNext();
  }
  while ((c != " ") && (c != ".") && (c != ",") && (c != ":") && (c !=
      ";") && (c != "\n") ) {

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
  print(Directory.current);
  var ReadDir = Directory(dirName);
  int count = 0;
  await for (var entity in
  ReadDir.list(recursive: true, followLinks: false)) {
    if(entity.path.endsWith('.txt')==true) {
      print(entity.path);
      count++;
    }
  }
  print(count);
  return count;
}