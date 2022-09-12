
import 'dart:io';
import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/dataBase.dart';
import 'package:uuid/uuid.dart';
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
        db.getCompaniesOrderByTradeName();
        break;
       // case 5:
       // db.removeCompany(company);
       // break;
        default:
        print('Digito inválido. Informe um número válido.');
      }
} while (options != 0);
/*
final ambev = Company(
      Uuid().v1(),
      'AMBEV',
      'AMBEV COMMERCIAL',
      '16391051000121',
      Address(
          'Esmeralda', 120, 'casa', 'Dom Pedro II', 'São Paulo', '12232883'),
      '12982171717',
      DateTime.now(),
      LegalPerson(
          'COCA-COLA',
          'COCA-COLA COMMERCIAL',
          '73923457000141',
          Address('AMETISTA', 35, '', 'Bosque dos Eucaliptos', 'São Paulo',
              '12458995'),
          'J'));

  final magalu = Company(
      Uuid().v1(),
      'MAGALU',
      'MAGALU COMMERCIAL',
      '31818594000176',
      Address('street', 170, 'complement', 'neighborhood', 'state', 'zipCode'),
      'phoneNumber',
      DateTime.now(),
      NaturalPerson(
          'TAMIRES',
          '42142142111',
          Address(
              'street', 120, 'complement', 'neighborhood', 'state', 'zipCode'),
          'F'));

db.createCompany(company1)
*/
}


