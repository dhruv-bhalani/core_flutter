import 'dart:io';
void main()
{   
    stdout.write("Enter size: ");
    int size=int.parse(stdin.readLineSync()??"0");


  //create
  List l= List.generate(size, (i){
    stdout.write("Enter element $i: ");
    return int.parse(stdin.readLineSync()??"0");
  });

  //read

  print("List :  $l ");

  //update

  l[0]=45;

  print("List update : $l ");

  //delete

  l.remove(45);

  print("List delete : $l");

  //insert

  l.insert(0, 23);

  print("List insert : $l");

}
