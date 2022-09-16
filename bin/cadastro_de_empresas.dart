

import 'dart:io';
import 'package:cadastro_de_empresas/dataBase.dart';


void main(List<String> arguments) {
  Database db = Database();

  int options = 100;

  do {
    print('1 - To Register a company.'); //add na lista
    print('2 - To Search registrated company by registration number.');
    print('3 - To Search registrated company by Partner registration number.');
    print('4 - To List Companies registered in alphabetical order (based on Corporate Trade).'); 
    print('5 - To delete a company(by ID).'); //remove na lista
    print('6 - To leave.');

    options = int.parse(stdin.readLineSync()!);
    if (options == 6) {
      print('Finished operation.');
      break;
    }
    switch (options) {
      case 1:
        db.insertCompany();
        //db.createCompany(ambev);
        //db.createCompany(magalu);
        break;
      case 2:
        db.searchCompByRegistNumber();
        break;
      case 3:
        db.searchPartByRegistNumber();
        break;
      case 4:
        db.getCompaniesOrderByCompanyName();
        break;
      case 5:
        db.removeCompanyID();
        break;   
      default:
        print('Invalid digit. Please, enter a valid number.');
    }
  } while (options != 0);
}