import'package:tp1/tools/TextTools.dart';
import'package:tp1/tools/FileReader.dart';
import'package:tp1/searchengine/Tree.dart';
import 'package:tp1/searchengine/Index.dart';

exo3 ()async{

  Index I = Index();
  I.build("textes");
  List<SearchResult> result = I.find("Loi");
  print(result);

}