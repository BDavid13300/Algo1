import 'package:tp1/tools/FileReader.dart' ;


countAl(FileReader Fichier){
  var a = false;
  int count = 0;

  while(!Fichier.isEndOfFile()){
    var c = Fichier.readNext();
    if (a && (c == 'l')){
      count = count + 1;
    }
    a = c == 'a';
  }
return count;
}

exo3(NomFich){
  print(countAl(FileReader(NomFich)));
}