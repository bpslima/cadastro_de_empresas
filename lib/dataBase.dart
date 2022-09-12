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
    print('Enter the tradename of the company to be add:');
    String tradeName = stdin.readLineSync()!;
    print('Enter the regustration Number of the company to be add:');
    String registrationNumber = stdin.readLineSync()!;
    print('Enter the phone number of the company to be add:');
    String phone = stdin.readLineSync()!;
    print('Enter the address of the company to be add.');
    print('Enter the street of the company to be add:');
    String street = stdin.readLineSync()!;
    print('Enter the number of the building of the company to be add:');
    String number = stdin.readLineSync()!;
    print('Enter the complement:');
    String complement = stdin.readLineSync()!;
    print('Enter the district of the company:');
    String district = stdin.readLineSync()!;
    print('Enter the state of the company:');
    String state = stdin.readLineSync()!;
    print('Enter the Zip Code of the company address :');
    String zipCode = stdin.readLineSync()!;

    Address addressCompany =
        Address(street, number, complement, district, state, zipCode);

    final registrationTime = DateTime.now();

    //Partner:
    print('Enter the name of the partner:');
    String partnerName = stdin.readLineSync()!;
    print('Enter the trade name of the company to be add:');
    String partnerTradeName = stdin.readLineSync()!;
    print('Enter the registration number of the partner:');
    String partnerRegistrationNumber = stdin.readLineSync()!;
    print('Enter the street  of the partner:');
    String partnerStreet = stdin.readLineSync()!;
    print('Enter the number of the partners building:');
    String partnerNumber = stdin.readLineSync()!;
    print('Enter complement  of the partner:');
    String partnerComplement = stdin.readLineSync()!;
    print('Enter the district of the partner:');
    String partnerDistrict = stdin.readLineSync()!;
    print('Enter the state  of the partner:');
    String partnerState = stdin.readLineSync()!;
    print('Enter the zip code  of the partner:');
    String partnerZipCode = stdin.readLineSync()!;
    print('Enter the type of the partner. Write N to Natural Person or L to Legal Person:');
    String partnerType = stdin.readLineSync()!;

    Address addressPartner = Address(partnerStreet, partnerNumber,
        partnerComplement, partnerDistrict, partnerState, partnerZipCode);

    Partner partner;

    if (partnerType == 'N') {
      partner = NaturalPerson(partnerType, partnerName, partnerRegistrationNumber,
          addressPartner);
    } else {
      partner = LegalPerson(partnerType, partnerName, partnerTradeName,
          partnerRegistrationNumber, addressPartner);
    }

    Company company = Company(companyName, tradeName, registrationNumber, phone, addressCompany, partner, registrationTime, uuid);
  

    companies.add(company); 
    

  }

 

  /*
  void createCompany(Company company) {      //para testar sem pedir pro usuario
    companies.add(company);
  }
*/

dynamic removeCompany(Company company){
  companies.remove(company);
  return companies;
}

dynamic printCompany() {
  print('Companies registrated:');
  for(var i = 0; i < companies.length; i++){
    return ('''Dados da empresa: \n Name: ${companies[i].companyName} \n Trade Name: ${companies[i].tradeName} \n
           Registration number: ${companies[i].registrationNumber} Phone number: ${companies[i].phone} \n
           Adress of company: ${companies[i].address.street}. ${companies[i].address.number}, ${companies[i].address.complement}, ${companies[i].address.district}, 
           ${companies[i].address.state}, ${companies[i].address.zipCode} \n
           Registration time: ${companies[i].registrationTime}, \n ID: ${companies[i].uuid}''');
}
  }
  }

dynamic searchCompByRegistNumber() {
        print('Enter the registration number to find the company:');
        String searchRegistNumCompany = stdin.readLineSync()!;
        final company = companies.firstWhere((element) => 
        element.registrationNumber == searchRegistNumCompany);
        return company.printCompany();
}



void searchPartByRegistNumber() {
        print('Enter the partner registration number to find the company:');
        String searchPartRegistNumCompany = stdin.readLineSync()!;

        final partner = companies.firstWhere((element) => 
        element.partner.registrationNumber == searchPartRegistNumCompany);


        print('''Dados da empresa: \n Company Name: ${partner.companyName} \n Trade Name: ${partner.tradeName} \n
           Registration number: ${partner.registrationNumber} Phone number: ${partner.phone} \n
           Adress of partner: ${partner.address.street}. ${partner.address.number}, ${partner.address.complement}, ${partner.address.district}, 
           ${partner.address.state}, ${partner.address.zipCode} \n
           Registration time: ${partner.registrationTime}, \n ID: ${partner.uuid}''');

      
    }

void getCompaniesOrderByTradeName(){
  companies.sort((a, b) => a.tradeName.compareTo(b.tradeName));
  print (companies);
  
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




