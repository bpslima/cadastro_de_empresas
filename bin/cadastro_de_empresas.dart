

import 'dart:io';
/*
import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
*/
import 'package:cadastro_de_empresas/dataBase.dart';

/*
import 'package:cadastro_de_empresas/legalPerson.dart';
import 'package:cadastro_de_empresas/naturalPerson.dart';
import 'package:uuid/uuid.dart';
*/

void main(List<String> arguments) {
  Database db = Database();
/*
  final ambev = Company(
      Uuid().v1(),
      'AMBEV',
      'AMBEV COMMERCIAL',
      '77777777777777',
      '12982173707',
      Address('Esmeralda Ambev', '120', 'casa', 'Dom Pedro II',
          'São José dos Campos', 'São Paulo', '12232883'),
      LegalPerson(
          'COCA-COLA',
          'COCA-COLA COMMERCIAL',
          '99999999999999',
          Address('Esmeralda Coca', '120', 'casa', 'Dom Pedro II',
              'São José dos Campos', 'São Paulo', '12232883'),
          'L'),
      DateTime.now());

  final magalu = Company(
      Uuid().v1(),
      'MAGALU',
      'MAGALU COMMERCIAL',
      '88888888888888',
      '12982173707',
      Address('Esmeralda Ambev', '120', 'casa', 'Dom Pedro II',
          'São José dos Campos', 'São Paulo', '12232883'),
      NaturalPerson(
          'Beatriz',
          '42142142142',
          Address('Esmeralda Beatriz', '120', 'casa', 'Dom Pedro II',
              'São José dos Campos', 'São Paulo', '12232883'),
          'N'),
      DateTime.now());
*/
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