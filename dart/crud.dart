import 'dart:io';

class Person{
  final list_name = [];

  create_list_person(person){
    list_name.add(person);
  }

  delete_person(name){
    if (name != null){
      list_name.remove(name);
    }
  }

  insert_new_person(name ,index){
    var numero = list_name.indexWhere((name_list) => name_list == name);
    if (name != null){
      if (numero <= index){
        list_name.insert(index, name);
      }
    }
  }

  update_name(name, new_name){
    if (name != null){
      var numero = list_name.indexWhere((name_list) => name_list == name);
      list_name[numero] = new_name;
    }
  }

  imformation(){
    print("+" * 30);
    print("this is my list ${list_name}");
    print("+" * 30);
  }
}

void main() {
  var x = Person();
  while(x != null){
    print("Enter option each: create_list_person[1], delete_person[2], insert_new_person[3], update_name[4], imformation[5]: ");
    int option = int.parse(stdin.readLineSync());
    if(option ==1 ){
      stdout.write("enter a name:  ");
      var person = stdin.readLineSync();
      x.create_list_person(person);
    }else if(option == 2){
      stdout.write("enter a name for delete: ");
      var name = stdin.readLineSync();
      x.delete_person(name);
    }else if(option == 3){
      stdout.write("enter a new person: ");
      var name = stdin.readLineSync();
      stdout.write("enter index to array: ");
      int index = int.parse(stdin.readLineSync());
      x.insert_new_person(name, index);
    }else if(option == 4){
      stdout.write("enter a name match: ");
      var name = stdin.readLineSync();
      stdout.write("enter a new name: ");
      var new_name = stdin.readLineSync();
      x.update_name(name, new_name);
    }else if(option == 5){
      x.imformation();
    }else{
      print("end to program");
      break;
    }
  }
}