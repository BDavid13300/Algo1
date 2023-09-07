import 'package:quiver/strings.dart';
import'package:tp1/tools/TextTools.dart';
import'package:tp1/tools/FileReader.dart';



class Tree{
  String word;
  Tree? rightT;
  Tree? leftT;
  //int count = 0 ;

  List result =[];

  Tree(this.word){}


  }

insertInTree(Tree? T,word,filename){
  if (T == null) {
    return Tree(word);
  }else {
    if (compareIgnoreCase(word, T.word) < 0) {
      T.rightT = insertInTree(T.rightT, word, filename);
    } else if (compareIgnoreCase(word, T.word) > 0){
      T.leftT = insertInTree(T.leftT, word, filename);
    }else if (compareIgnoreCase(word, T.word) == 0){
      int i = T.result.indexOf(filename);
      if(i!=-1){
          T.result[i]=T.result[i].count+1;
      }
      else{
        T.result.add(filename);
      }
   }
  }
  return T;
}



walkTree(Tree? T,void action(String word))async {
  if (T == null) {
    return null;
  } else {
    walkTree(T.rightT, action);
    action(T.word);
    walkTree(T.leftT, action);
  }
}