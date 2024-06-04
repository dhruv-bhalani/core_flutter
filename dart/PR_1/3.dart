import 'dart:io';

void main() {
  stdout.write("Enter array size: ");
  int size = int.parse(stdin.readLineSync() ?? "0");

  List<int> L = List.generate(size, (index) {
    stdout.write("Enter Element: ");
    return int.parse(stdin.readLineSync() ?? "0");
  });
  print("1:for lnsert ");
  print("2:for delete ");
  print("3:for update ");

  stdout.write("\nEnter choice: ");
  int choice = int.parse(stdin.readLineSync() ?? "0");

  switch (choice) {
    case 1:
      stdout.write("\nEnter index: ");
      int index = int.parse(stdin.readLineSync() ?? "0");
      stdout.write("\nEnter element: ");
      int x = int.parse(stdin.readLineSync() ?? "0");

      L.insert(index, x);
       print("List :  $L ");
      break;
    case 2:
      stdout.write("\nEnter index: ");
      int index = int.parse(stdin.readLineSync() ?? "0");

      L.removeAt(index);
       print("List :  $L ");
      break;
    
    case 3:
      stdout.write("\nEnter index: ");
      int index = int.parse(stdin.readLineSync() ?? "0");
      stdout.write("\nEnter element: ");
      int x = int.parse(stdin.readLineSync() ?? "0");

      L[index] = x;
       print("List :  $L ");
      break;
    default:
      stdout.write("Invalid choice");
      break;
  }
}
