import 'dart:io';
import 'class.dart';

void main()
{
  stdout.write("Enter Number Of Customer: ");
  int size = int.parse(stdin.readLineSync() ?? "0");
  
  Customer A = Customer(size: size);
}
