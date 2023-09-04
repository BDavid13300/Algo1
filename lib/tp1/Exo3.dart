import 'package:tp1/tools/FileReader.dart' ;


countAl(FileReader Fichier){
  var Lettre1;
  var Lettre2;
  int count = 0;

  Lettre1 = Fichier.readNext();
  Lettre1 = Fichier.readNext();
  while(Fichier.last != -1){
    if ((Lettre1 == "a") && (Lettre2 == "l" )){
      count++;
      Lettre1 = Lettre2;
      Lettre2 = Fichier.readNext();
    }else{
      Lettre1 = Lettre2;
      Lettre2 = Fichier.readNext();
    }
  }

}