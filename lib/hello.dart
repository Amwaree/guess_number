import 'dart:io';
import 'dart:math';
import 'game.dart';

void main(){
  var game = Game();
  int result = 0;
  var ans;

  do {
    stdout.write("12345 Please guess the number between 1 and 100 :");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!); //แปลง String ไปเป็น int

    if(guess == null){
      print("Please enter number only");
      continue;
    }
    result = game.doGuess(guess);
  }while(result !=1);
  do{
    if(result==1){
      print("Want to continue playing?");
    }
  }while(result!=1);
}
