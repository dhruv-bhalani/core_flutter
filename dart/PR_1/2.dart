import 'dart:io';

void main() {
  stdout.write("Enter array size: ");
  int size = int.parse(stdin.readLineSync() ?? "0");

  List<int>L = List.generate(size, (index) {
    stdout.write("Enter Element : ");
    return int.parse(stdin.readLineSync() ?? "0");
  });

  L.sort();
  print("\nlargest element : ${L[size-1]}");


}