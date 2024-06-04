import 'dart:io';
void main()
{
    stdout.write("Enter the size");

    int size = int.parse(stdin.readLineSync()?? "0");

    List L = List.generate(size,(index){

      stdout.write("Enter Element $index : ");

      return int.parse(stdin.readLineSync()?? "0");

    });

    L.add(5);
    L.addAll([1,2,3,4,5]);

    print("List: $L");

}