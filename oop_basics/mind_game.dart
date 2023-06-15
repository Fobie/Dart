import 'dart:io';
import 'dart:math';

void main(){
  name();
  check();
}
void name(){
  var name;
  print('Enter Your Name : ');
  name = stdin.readLineSync();
}
void check(){
  int num;
  int guessNumber;
  int count = 0;

  Random random = Random();
  num = random.nextInt(99)+1;
  // print(num);

  print('Welcome to mind game');

  while(true){
    count++;
    print('Enter Your Number');
    guessNumber = int.parse(stdin.readLineSync()!);
    if(guessNumber > num) {
      print('Your Number is greater than random number');
    } else if (guessNumber < num) {
      print('Your Number is less than random number');
    } else {
      break;
    }
  }

  if(count <= 5){
    print('Congrazzzz!! You are correct with $count attempts, You are so brilliant');
  } else if(count >= 5){
    print('Congrazzzz!! You are correct with $count attempts, You are a little bit dumb');
  }
}
