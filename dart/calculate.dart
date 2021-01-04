import 'dart:io';

class Calculate {
  sum(number_one, number_two){
    var result = number_one + number_two;
    print("this is my result: ${result}");
  }

  rest(number_one, number_two){
    var result = number_one - number_two;
    print("this is my result: ${result}");
  }

  multiplication(number_one, number_two){
    var result = number_one * number_two;
    print("this is my result: ${result}");
  }

  division(number_one, number_two){
    var result = number_one / number_two;
    print("this is my result: ${result}");
  }
}

void main(){
  while (true){
      var x = Calculate();
      print("enter one option: sum[1], rest[2], multiplication[3], divisions[4]: ");
      int option = int.parse(stdin.readLineSync()); 
      print("enter his firt number: ");
      int number_one = int.parse(stdin.readLineSync()); 
      print("enter his second number: ");
      int number_two = int.parse(stdin.readLineSync()); 
      if(option == 1){
        x.sum(number_one, number_two);
      }else if (option == 2){
        x.rest(number_one, number_two);
      }else if (option == 3){
        x.multiplication(number_one, number_two);
      }else if (option == 4){
        x.division(number_one, number_two);
      }else {
        print("option  not found");
        break;
      }
    }
}