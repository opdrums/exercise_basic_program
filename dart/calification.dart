//import 'dart:_js_primitives';
import 'dart:io';

class Student{
  final list_student = [];
  final list_matter = [];
  final student = [];
  final matter = [];

  insert_student(student){
    list_student.add(student);    
  }

  insert_matter(matter){
    list_matter.add(matter); 
  }
  
  match_student(name){
    for (var i in list_student){
        if (i.toUpperCase() == name.toUpperCase()){
        student.add(name);
      }
    }
    list_student.remove(name);
  }

  match_matter(name){
    for (var i in list_matter){
        if (i.toUpperCase() == name.toUpperCase()){
        matter.add(name);
      }
    }
    list_matter.remove(name);
  }

  calification(clf){
    for(var i in student){
      for(var t in matter){
        var std = i;
        var mtt = t;
        if(clf <= 2){
          print("Sr ${std} your calification is reproved of the matter ${mtt}");
        }else if(clf <= 6){
          print("Sr ${std} your calification is meddium of the matter ${mtt}");
        }else if(clf <= 9){
          print("Sr ${std} your calification is higher of the matter ${mtt}");
        }else if(clf <= 11){
          print("Sr ${std} your calification is exelent of the matter ${mtt}");
        }
      }
    }
  student.clear();
  matter.clear();
  }

  imformation(){
    print("+"* 30);
    print("this is my list student ${list_student}");
    print("+"* 30);
    print("this is my student match ${student}");
    print("+"* 30);
    print("this is my student match ${list_matter}");
    print("+"* 30);
    print("this is my student match ${matter}");
    print("+"* 30);
  }
}



void main(List<String> args) {
  var x = Student();
  while (x != null){
    print("Enter option each: insert_student[1], insert_matter[2], match_student[3], match_matter[4], calification[5], imformation[6]: ");
    int option = int.parse(stdin.readLineSync());
    if(option == 1){
      stdout.write("enter a name student:  ");
      var student = stdin.readLineSync();
      x.insert_student(student);
    }else if(option == 2){
      stdout.write("enter a name matter:  ");
      var matter = stdin.readLineSync();
      x.insert_matter(matter);
    }else if(option == 3){
      stdout.write("enter a name match student:  ");
      var name = stdin.readLineSync();
      x.match_student(name);
    }else if(option == 4){
      stdout.write("enter a name match matter:  ");
      var name = stdin.readLineSync();
      x.match_matter(name);
    }else if(option == 5){
      print("Enter yuor calification: ");
      int clf = int.parse(stdin.readLineSync());
      x.calification(clf);
    }else if(option == 6){
      x.imformation();
    }else{
      print("end to program");
      break;
    }
  }
}