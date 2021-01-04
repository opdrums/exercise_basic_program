import 'dart:io';

class User{
  final maps_user ={};

  insert_usert(key, value){
    if(key != null && value != null){
      maps_user.addAll({key:value});
    }
  }

  delete_user(name){
    if(name != null){
      maps_user.removeWhere((key, value) => value.startsWith(name));
    }
  }

  update_user(key, new_value){
    if(key != null && new_value != null){
      maps_user.update(key, (value) => new_value);
    }
  }

  imformation(){
    maps_user.forEach((key, value) {
      print("+" * 30);
      print("this is my key ${key} and this my value ${value}");
      print("+" * 30);
    });
  }
}

void main() {
  var users = User();
  while(users != null){
    print("Enter option each: create_maps_user[1], delete_user[2], update_user[3], imformation[4]: ");
    int option = int.parse(stdin.readLineSync());
    if(option == 1){
      print("Enter key number: ");
      int key = int.parse(stdin.readLineSync());
      stdout.write("enter  value name: ");
      var value = stdin.readLineSync();
      users.insert_usert(key, value);
    }else if(option == 2){
      stdout.write("enter a name for delete: ");
      var name = stdin.readLineSync();
      users.delete_user(name);
    }else if(option == 3){
      print("Enter match key : ");
      int key = int.parse(stdin.readLineSync());
      stdout.write("Enter  match value name: ");
      var new_value = stdin.readLineSync();
      users.update_user(key, new_value);
    }else if(option == 4){
      users.imformation();
    }else{
      print("end to program");
      break;
    }
  }
}