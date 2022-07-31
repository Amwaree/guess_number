import 'dart:math';

class Game{
  int answer = 0;//instance field

  Game(){
    var r = Random();
    answer = r.nextInt(100)+1;//สุ่มตั้งแต่ 1-100
  }
    int doGuess(int num){
    if(num>answer){
      print("$num is too high");
      return 0;
    }else if(num<answer){
      print("$num is too low");
      return 0;
    }else{
      print("$num is too correct");
      return 1;
    }
    }
}