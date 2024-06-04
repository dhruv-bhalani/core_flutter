import 'dart:io';

void main() {
  stdout.write("Enter Row number: ");
  int row = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter column number: ");
  int column = int.parse(stdin.readLineSync() ?? "0");

  List<List<int>> R= List.generate(row, (index){

      List<int> C= List.generate(column, (Index){

        stdout.write("Enter row & column: [${index}],[${Index}] :  ");
        return int.parse(stdin.readLineSync()?? "0");
      });
      return C;
  });

  int sum = 0;

  for(int i=0; i<row; i++) {
    for(int j=0; j<column; j++) {
      sum += R[i][j];
    }
  }
  print("\nSum $sum");
}