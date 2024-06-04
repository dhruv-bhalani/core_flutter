import 'dart:io';

void main() {
  stdout.write("Enter array size: ");
  int size = int.parse(stdin.readLineSync() ?? "0");

  List L = List.generate(size, (index) {
    stdout.write("Enter Element : ");
    return int.parse(stdin.readLineSync() ?? "0");
  });

  for (int i = 0; i < size; i++) {
    if (L[i] < 0) {
      print("negative element of array: ${L[i]}");
    }
  }
}
