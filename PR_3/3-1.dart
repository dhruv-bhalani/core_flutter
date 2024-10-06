import 'dart:io';

int Sum({required List<int> l}){
  int sum = 0;

  l.forEach((s) => sum += s);
  return sum;
}
void main() {
  stdout.write("Enter the length of List: ");
  int size = int.parse(stdin.readLineSync() ?? "0");
  
  List<int> l = List.generate(size, (i) {
    stdout.write("Enter the List ${i+1} Element: ");
    return  int.parse(stdin.readLineSync() ?? "0");
  });
  print("The Sum of All Elements: ${Sum(l:l)}");
}