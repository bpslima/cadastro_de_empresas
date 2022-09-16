
import 'dart:io';
import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/legalPerson.dart';
import 'package:cadastro_de_empresas/naturalPerson.dart';
import 'package:cadastro_de_empresas/partner.dart';
import 'package:uuid/uuid.dart';

class Database {
  List<Company> companies = [];
  final uuid = Uuid().v1();
  final registrationTime = DateTime.now();

  //Company:

  void insertCompany() {
    print('Enter the name of the company to be add:');
    String companyName = stdin.readLineSync()!;
    print('Enter the tradename of the company to be add:');
    String tradeName = stdin.readLineSync()!;
    print( 'Enter the registration Number of the company to be add (ONLY NUMBERS):');
    String registrationNumber = stdin.readLineSync()!;
    print('Enter the phone number of the company to be add:');
    String phone = stdin.readLineSync()!;

    print('Next, enter the company address company.');

    print('Enter the street of the company to be add:');
    String street = stdin.readLineSync()!;
    print('Enter the company number of the building to be add:');
    String number = stdin.readLineSync()!;
    print('Enter the complement (type "NA" if there is no complement):');
    String complement = stdin.readLineSync()!;
    print('Enter the district of the company:');
    String district = stdin.readLineSync()!;
    print('Enter the city of the company:');
    String city = stdin.readLineSync()!;
    print('Enter the state of the company:');
    String state = stdin.readLineSync()!;
    print('Enter the Zip Code of the company address:');
    String zipCode = stdin.readLineSync()!;

    Address addressCompany = Address(
      street, 
      number, 
      complement, 
      district, 
      city, 
      state, 
      zipCode);

    //Partner:
    Partner partner;
    String partnerTradeName = '';

    print('Enter the type of the partner. Write "N" to Natural Person or "L" to Legal Person:');
    String partnerType = (stdin.readLineSync()!).toUpperCase();
    print('Enter the name of the partner:');
    String partnerName = (stdin.readLineSync()!).toUpperCase();
        if (partnerType == 'L') {
            print('Enter the trade name of the company to be add:');
            partnerTradeName = stdin.readLineSync()!;
        }

    print('Enter the registration number of the partner (ONLY NUMBERS):');
    String partnerRegistrationNumber = stdin.readLineSync()!;
    print('Enter the street  of the partner:');
    String partnerStreet = stdin.readLineSync()!;
    print('Enter the number of the partner building:');
    String partnerNumber = stdin.readLineSync()!;
    print('Enter complement of the partner:');
    String partnerComplement = stdin.readLineSync()!;
    print('Enter the district of the partner:');
    String partnerDistrict = stdin.readLineSync()!;
    print('Enter the city  of the partner:');
    String partnerCity = stdin.readLineSync()!;
    print('Enter the state  of the partner:');
    String partnerState = stdin.readLineSync()!;
    print('Enter the zip code  of the partner:');
    String partnerZipCode = stdin.readLineSync()!;

    Address addressPartner = Address(
        partnerStreet,
        partnerNumber,
        partnerComplement,
        partnerDistrict,
        partnerCity,
        partnerState,
        partnerZipCode);

    if (partnerType == "L") {
      partner = LegalPerson(partnerName, partnerTradeName,
          partnerRegistrationNumber, addressPartner, partnerType);
    } else {
      partner = NaturalPerson(
          partnerName, partnerRegistrationNumber, addressPartner, partnerType);
    } 
    
  

    Company company = Company(
      uuid,
      registrationNumber,
      companyName,
      tradeName,
      phone,
      addressCompany,
      partner,
      registrationTime,
    );

    companies.add(company);
  }


  //Methods:

  void printCompany(Company company) {
    print('''
    ID: ${company.uuid} 
    Registration time: ${company.registrationTime}
    Registration number: ${company.showRegistNumberCompany()}
    Name: ${company.companyName}
    Trade Name: ${company.tradeName}
    Phone number: ${company.showphone()} 
    Address of company: 
    ${company.address.street}, ${company.address.number}, ${company.address.complement}, ${company.address.district},${company.address.city}/${company.address.state.toUpperCase()}, ${company.address.showZipCode()}
    Partner:
    Type of person: ${company.partner.partnerType.toUpperCase() == 'L' ? 'Legal Person' : 'Natural Person'}
    Registration Number: ${company.partner.showRegistrationNumber()}
    Name: ${company.partner.name}
    ${company.partner.tradeName != null ? 'Trade Name: ${company.partner.tradeName}\n' : ''}
    Address of partner: 
    ${company.partner.address.street}, ${company.partner.address.number}, ${company.partner.address.complement}, ${company.partner.address.district}, ${company.partner.address.city}/${company.partner.address.state.toUpperCase()}, ${company.partner.address.showZipCode()} 
    ===================================================''');
  }

  void searchCompByRegistNumber() {
    print('To find the company, enter the its registration number (ONLY NUMBERS):');
    String searchRegistNumCompany = stdin.readLineSync()!;
    final company = companies.firstWhere(
        (element) =>  element.registrationNumber == searchRegistNumCompany);
    printCompany(company); 
  }

  void searchPartByRegistNumber() {
    print('Enter the partner registration number to find the company:');
    String searchPartRegistNumCompany = stdin.readLineSync()!;

    final partner = companies.firstWhere((element) =>
        element.partner.registrationNumber == searchPartRegistNumCompany);
    printCompany(partner);
  }

  void getCompaniesOrderByCompanyName() {
    for (int i = 0; i < companies.length; i++) {
      companies.sort((a, b) => a.companyName.compareTo(b.companyName));
      printCompany(companies[i]);
    }
  }

  void removeCompanyID() {
    print('Enter with the ID to delete a company registration:');
    String byID = stdin.readLineSync()!;
    final company = companies.firstWhere((element) => element.uuid == byID);
    print('The registration of ${company.companyName} company was successfully deleted.');
    companies.remove(company);
  }
}
      