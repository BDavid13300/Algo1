import 'package:tp1/tools/FileReader.dart' ;
import 'package:tp1/tools/TextTools.dart' ;

read5Words(FileReader Fichier){
  var words = [];
  while ((words.length < 5 ) && (!Fichier.isEndOfFile())){
    String? word = readWord(Fichier);
    if (word != null) {
      words.add(word);
    }

  }
  return words;
}

exo5(NomFich){
  print(read5Words(FileReader(NomFich)));
}