import 'dart:io';

main(){
  print(Gender.Male.name);
  print("Enter name");
var nameinput = stdin.readLineSync();
print("Select Gender");
print("1. Male");
print("2. Female");
print("3. Other");
String? gendername;
var genderinput = stdin.readLineSync();
switch(genderinput){
  case "Male":
   gendername = Gender.Male.name;
  case "Female":
   gendername = Gender.Female.name;
  case "Other":
   gendername = Gender.Other.name;

}
Person personobj = Person();
personobj.displaypersonsinfo(nameinput!, gendername!);

}

enum Gender{
  Male,
  Female,
  Other
}

class Person{
  String? name;
  String? gender;

displaypersonsinfo(String name, String
 gender){
  if (gender== "Male"){
    print("Name = $name");
    print("Gender = Male");
  }else if
    (gender==Gender.Female){
    print("Name = $name");
    print("Gender = Female");

  }else{
     print("Name = $name");
    print("Gender =  Other");
  }

}

}