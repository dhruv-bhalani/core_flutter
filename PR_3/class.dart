import 'dart:ffi';
import 'dart:io';

class Customer {
  late int id, type,choice, qty;
  late String name,Number;
  late double t_price, discount;
  List<String> cart = [];
  List<double> price = [];

  Customer({required int size}) {
    List l = List.generate(size, (index) {
      stdout.write("Enter Customer Id : ");
      id = int.parse(stdin.readLineSync() ?? "0");
      stdout.write("Enter Customer Name : ");
      name = stdin.readLineSync() ?? "0";
      stdout.write("Enter Customer Number : ");
      Number = stdin.readLineSync() ?? "0";
    });
    Category();
  }

  void Category() {
    do {
      print("----catagory----");
      print("[1]...For Drinks");
      print("[2]...For Fruits");
      print("[3]...For Weapons");
      print("[4]...For Exit OR Get Bill");
      stdout.write("Enter Your Choice : ");
      choice = int.parse(stdin.readLineSync() ?? "0");

      switch (choice) {
        case 1:
          _clearScreen();
          print("[1]...For Coffe");
          print("[2]...For Milk");
          print("[3]...For Soft Drinks");
          print("[4]...For Exit");
          stdout.write("Enter Your Choice : ");
          choice = int.parse(stdin.readLineSync() ?? "0");
          switch (choice) {
            case 1:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("Coffe");
              price.add(qty * 3.00);
              _clearScreen();
              break;

            case 2:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("Milk");
              price.add(qty * 2.25);
              _clearScreen();

              break;

            case 3:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("Soft Drinks");
              price.add(qty * 2.00);
              _clearScreen();
              break;

            case 4:
              print("You Are Exited");
              break;

            default:
              print("Invalid Choice");
              break;
          }
          break;
      
        case 2:
          _clearScreen();
          print("[1]...For Apple");
          print("[2]...For Pineapple");
          print("[3]...For Mango");
          print("[4]...For Exit");
          stdout.write("Enter Your Choice : ");
          choice = int.parse(stdin.readLineSync() ?? "0");
          switch (choice) {
            case 1:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("Apple");
              price.add(qty * 0.80);
              _clearScreen();
              break;

            case 2:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("Pineapple");
              price.add(qty * 0.70);
              _clearScreen();
              break;

            case 3:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("mango");
              price.add(qty * 0.90);
              _clearScreen();
              break;

            case 4:
              _clearScreen();
              print("You Are Exited");
              break;

            default:
              print("Invalid Choice");
              break;
          }
          break;
        case 3:
           _clearScreen();
          print("[1]...For AK47");
          print("[2]...For M4A1");
          print("[3]...For P90");
          print("[4]...For Exit");
          stdout.write("Enter Your Choice : ");
          choice = int.parse(stdin.readLineSync() ?? "0");

          switch (choice) {
            case 1:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("AK47");
              price.add(qty * 1499);
              _clearScreen();
              break;

            case 2:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("M4A1");
              price.add(qty * 1299);
              _clearScreen();
              break;

            case 3:
              stdout.write("Enter Quantity : ");
              qty = int.parse(stdin.readLineSync() ?? "0");
              cart.add("P90");
              price.add(qty * 999);
              _clearScreen();
              break;

            case 4:
              _clearScreen();
              print("You Are Exited");
              break;

            default:
              print("Invalid Choice");
              break;
          }

          break;
      }
    } while (choice != 4);
  }

  void getbill() {
    t_price = 0;
    for (int i = 0; i < cart.length; i++) {
      t_price += price[i];
    }
    discount = calculateDiscount(t_price);

    print("\tItem\tPrice ");
    for (int i = 0; i < cart.length; i++) {
      print("\n\n\t${cart[i]}\t${price[i]}\t");
    }
    print("================================================================\n");
    print("Total : $t_price");
    print("Discount : $discount");
    print("Total Bill : ${t_price - discount}");
  }

  double calculateDiscount(double t_price) {
    if (t_price >= 500 && t_price < 1500) {
      return (t_price * 0.1);
    } else if (t_price >= 1500 && t_price < 3500) {
      return (t_price * 0.2);
    } else if (t_price >= 3500 && t_price < 6500) {
      return (t_price * 0.25);
    } else if (t_price >= 6500) {
      return (t_price * 0.3);
    } else {
      return 0;
    }
  }

  void _clearScreen() => print('\x1B[2J\x1B[0;0H');
}
