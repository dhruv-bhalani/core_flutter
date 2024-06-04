import 'dart:io';

void main() {
  stdout.write("Enter students number: ");

  int size = int.parse(stdin.readLineSync() ?? "0");

  List<Map<String, dynamic>> L = List.generate(size, (index) {
    {
      stdout.write("Enter students id: ");
      int id = int.parse(stdin.readLineSync() ?? "0");

      stdout.write("Enter students name: ");
      String name = stdin.readLineSync() ?? "..";

      stdout.write("Enter students per");

      int per = int.parse(stdin.readLineSync() ?? "0");

      return {"id": id, "name": name, "per": per};
    }
  });
  
  L.forEach((element) 
  {
    element.forEach((key, value) 
    {
      print("$key: $value");
    });
  });
}
