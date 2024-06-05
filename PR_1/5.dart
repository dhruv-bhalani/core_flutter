import 'dart:io';

void main()
{
  stdout.write("Enter Row : ");
  int r = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Column : ");
  int c = int.parse(stdin.readLineSync() ?? "0");

  List<List<int>> R = List.generate(r, (index)
  {
    List<int> C = List.generate(c, (Index)
    {
      stdout.write("Enter Element [${index}][${Index}]: ");
      return int.parse(stdin.readLineSync() ?? "0");
    });
    return C;
  });

  int choice = 0;
  int sum = 0;

  do{
    print("\n1  Sum Of All Elements");
    print("2 Sum Of Specific Row");
    print("3  Sum Of Specific Column");
    print("4 Sum Of Diagonal Element");
    print("5 Sum Of Anti-Diagonal Element");
    print("0 forExit");
    stdout.write("Enter Your Choice : ");
    choice = int.parse(stdin.readLineSync()?? "0");

    switch(choice)
    {
      case 1:
        sum = 0;
        for(int i=0; i < r; i++)
        {
          for(int j=0; j < r; j++)
          {
            sum = sum + R[i][j];
          }
        }
        print("sum: $sum\n");
        break;
      case 2:
        sum = 0;
        stdout.write("Enter Row: ");      
        int row = int.parse(stdin.readLineSync() ?? "0");     
          for(int j=0; j < r; j++)
          {
            sum = sum + R[row][j];
          }
        print("sum: $sum\n");
        break;
      case 3:
        sum = 0;
        stdout.write("Enter Row: ");      
        int col = int.parse(stdin.readLineSync() ?? "0");     
          for(int i=0; i < r; i++)
          {
            sum = sum + R[i][col];
          }
        print("sum: $sum\n");
        break;
      case 4:
        sum = 0;
         for(int i=0; i < r; i++)
        {
          for(int j=0; j < r; j++)
          {
            if(i == j)
            {
              sum = sum + R[i][j];
            }
          }
        }
        print("sum Of Diagonal Element: $sum\n");
        break;
      case 5:
        sum = 0;
        for(int i=0; i < r; i++)
        {
          for(int j=0; j < r; j++)
          {
            if(i+j==r-1)
            {
              sum = sum + R[i][j];
            }
          }
        }
        print("sum Of Anti-Diagonal Element: $sum\n");
        break;
      case 0:
        print("Exited");
        exit;
      default:
        print("Invalid value");
        break;
    }

  }while(choice != 0);
}
