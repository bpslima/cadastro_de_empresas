import 'dart:io';

import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/legalPerson.dart';
import 'package:cadastro_de_empresas/naturalPerson.dart';
import 'package:cadastro_de_empresas/partner.dart';
import 'package:uuid/uuid.dart';

class Database{
   List<Company> companies = [];

  void insertCompany() {
    print('Enter the name of the company to be add:');

    final uuid = Uuid().v1();

    String companyName = stdin.readLineSync()!;
    String tradeName = stdin.readLineSync()!;
    String registrationNumber = stdin.readLineSync()!;
    String phone = stdin.readLineSync()!;

    String street = stdin.readLineSync()!;
    String number = stdin.readLineSync()!;
    String complement = stdin.readLineSync()!;
    String district = stdin.readLineSync()!;
    String state = stdin.readLineSync()!;
    String zipCode = stdin.readLineSync()!;

    Address addressCompany =
        Address(street, number, complement, district, state, zipCode);

    final registrationTime = DateTime.now();

    //Partner:
    String partnerName = stdin.readLineSync()!;
    String partnerTradeName = stdin.readLineSync()!;
    String partnerRegistrationNumber = stdin.readLineSync()!;

    String partnerStreet = stdin.readLineSync()!;
    String partnerNumber = stdin.readLineSync()!;
    String partnerComplement = stdin.readLineSync()!;
    String partnerDistrict = stdin.readLineSync()!;
    String partnerState = stdin.readLineSync()!;
    String partnerZipCode = stdin.readLineSync()!;
    String partnerType = stdin.readLineSync()!;

    Address addressPartner = Address(partnerStreet, partnerNumber,
        partnerComplement, partnerDistrict, partnerState, partnerZipCode);

    Partner partner;

    if (partnerType == 'F') {
      partner = NaturalPerson(partnerName, partnerRegistrationNumber,
          addressPartner, partnerType);
    } else {
      partner = LegalPerson(partnerName, partnerTradeName,
          partnerRegistrationNumber, addressPartner, partnerType);
    }

    Company company = Company(uuid, companyName, tradeName, registrationNumber, phone, registrationTime, addressCompany, partner);

    companies.add(company); 

  
  }
  /*
  void createCompany(Company company) {      //para testar sem pedir pro usuario
    companies.add(company);
  }
*/

void removeCompany(Company company){
  companies.remove(company);
}

void printCompany(List<String> companies) {
  print('Companies registrated:');
  for(var i = 0; i < companies.length; i++){
  print(companies[i]);
  }

}

/*
List<String> removeCompany() {
  print('Enter the name of the company to be delete:');
  String removendo = stdin.readLineSync()!;
  companies.remove(removendo);
  return [];

}

void printCompany(List<String> lista) {
  print('Companies registrated:');
  for(var i = 0; i < lista.length; i++){
  print(lista[i]);
  }
*/




