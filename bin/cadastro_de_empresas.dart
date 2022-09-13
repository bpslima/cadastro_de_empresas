
import 'dart:io';
import 'package:cadastro_de_empresas/dataBase.dart';

void main(List<String> arguments) {
 
int options = 5;
 Database db = Database();

do {
  print('1 - To Register a company.'); //add na lista
  print('2 - To Search registrated company by registration number.');
  print('3 - To Search registrated company by Partner registration number.');
  print('4 - To List Companies registered in alphabetical order (based on Corporate Trade).'); //print a lista
  print('5 - To delete a company(by ID).'); //remove na lista
  print('6 - To leave.');
  
  int options = int.parse(stdin.readLineSync()!);
  if (options == 0){
    print('Finished operation.');
    break;
  }
      switch(options){
        case 1:
        db.insertCompany();
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
        print('Digito inválido. Informe um número válido.');
      }
} while (options != 0);

}


