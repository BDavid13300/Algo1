import 'package:tp1/tools/FileReader.dart' ;

readFirstChar(FileReader Fichier){
  return Fichier.readNext();
}

exo2(NomFich){
  readFirstChar(FileReader(NomFich));
}