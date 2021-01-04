import 'dart:io';
class Operation {
  var list_number = [];
  var par = [];
  var impar = [];

  
    insert_list(number){
      list_number.add(number);
    }

    operation(){
      for(var i in list_number) {
        if(i % 2 == 0) {
          par.add(i);
        }else if(i % 2 == 1){
          impar.add(i);
        }
      }
    print("this is my list par ${par}");
    print("this is my list impar ${impar}");
  }

  imformation(){
    print("+" * 30);
    print("this is my list ${list_number}");
    print("+" * 30);
  }
}
void main() {
  var x = Operation();
  while(x != null){
    print("Enter option: insert_number[1], operation[2], imformation[3]: ");
    int option = int.parse(stdin.readLineSync());
    if(option == 1){
      print("Enter number");
      int number = int.parse(stdin.readLineSync());
      x.insert_list(number);
    }else if(option == 2){
      x.operation();
    }else if(option == 3){
      x.imformation();
    }else {
      print("end to program");
      break;
    }
  }
}