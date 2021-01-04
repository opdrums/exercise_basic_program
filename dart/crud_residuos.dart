import 'dart:io';

class Residuos{
  final map_number = {};
  final map_par = {};
  final map_impar = {};

  insert_number(key,value){
    map_number.addAll({key: value});
  }

  operation(){
    map_number.forEach((key, value) { 
      if(value % 2 == 0){
        map_par.addAll({key: value});
      }else if(value % 2 == 1){
        map_impar.addAll({key: value});
      }
    });
    print("this is my map par: ${map_par}");
    print("this is my map impar: ${map_impar}");
  }
  
  imformation(){
    print(map_number);
  }
}

void main() {
  var x = Residuos();
  while(x != null){
    print("Enter option: insert_number[1], operation[2], imformation[3]: ");
    int option = int.parse(stdin.readLineSync());
    if(option == 1){
      print("Enter key number");
      int key = int.parse(stdin.readLineSync());
      print("Enter value number");
      int value = int.parse(stdin.readLineSync());
      x.insert_number(key, value);
    }else if (option == 2){
      x.operation();
    }else if(option == 3){
      x.imformation();
    }
  }
}