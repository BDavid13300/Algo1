import 'package:tp1/tools/FileReader.dart' ;

countWords(FileReader Fichier) {
var count = 0;

  while(!Fichier.isEndOfFile()) {
    String c = Fichier.readNext();
    var verif = 0;
    while ((c != " ") && (c != ".") && (c != ",") && (c != ":") && (c !=
        ";") && (c != "\n") ) {
      verif = verif + 1 ;
      if ((Fichier.isEndOfFile())) {
        break;
      }
      c = Fichier.readNext();
    }
    if (verif != 0) {
      count = count + 1;
    }
  }
  return count;
}


exo4(NomFich){
  print(countWords(FileReader(NomFich)));
}