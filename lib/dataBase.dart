import 'dart:io';
import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/legalPerson.dart';
import 'package:cadastro_de_empresas/naturalPerson.dart';
import 'package:cadastro_de_empresas/partner.dart';
import 'package:uuid/uuid.dart';

class Database {
  List<Company> companies = [];

  void insertCompany() {
    print('Enter the name of the company to be add:');

    final uuid = Uuid().v1();

    String companyName = stdin.readLineSync()!;
    print('Enter the tradename of the company to be add:');
    String tradeName = stdin.readLineSync()!;
    print('Enter the registration Number of the company to be add:');
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
    Partner partner;
    String partnerTradeName = '';
     
    print('Enter the type of the partner. Write N to Natural Person or L to Legal Person:');
    String partnerType = stdin.readLineSync()!;
    print('Enter the name of the partner:');
    String partnerName = stdin.readLineSync()!;
       if (partnerType == 'L') {
         print('Enter the trade name of the company to be add:');
         partnerTradeName = stdin.readLineSync()!;
       }
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
    
   Address addressPartner = Address(partnerStreet, partnerNumber,
        partnerComplement, partnerDistrict, partnerState, partnerZipCode);

    if (partnerType == "L"){
      partner = LegalPerson(partnerName, partnerTradeName, partnerRegistrationNumber, partnerType, addressPartner);
    } else{
    partner = NaturalPerson(partnerName, registrationNumber, partnerType, addressPartner);
    }
    

    Company company = Company(uuid, registrationNumber, companyName, tradeName, phone,
        addressCompany, partner, registrationTime, );

    companies.add(company);
  }

  void createCompany(Company company) {
    //para testar sem pedir pro usuario
    companies.add(company);
  }

  
  dynamic printCompany(Company company) {
    print('Companies registrated:');
    return ('''Company registration: \n ID: ${company.uuid} \n Registration number: ${company.showRegistNumberCompany()} \n Name: ${company.companyName} \n Trade Name: ${company.tradeName}
    Phone number: ${company.phone} \n Adress of company: ${company.address.street}. ${company.address.number}, ${company.address.complement}, ${company.address.district}, 
    ${company.address.state}, ${company.address.showZipCode()}. \n Partner:\n Type of the person: ${company.partner.partnerType} \n Registration Number:  ${company.partner.showRegistrationNumber()}
    \n Name: ${company.partner.name} \n ${company.partner.partnerType == 'L'? 'Trade Name: ${company.partner.tradeName}':''} \n Adress of partner: ${company.address.street}, ${company.address.number}, ${company.address.complement}, ${company.address.district}, ${company.address.state}, ${company.address.showZipCode()} \n Registration time: ${company.registrationTime}''');
     
  }
//
  void searchCompByRegistNumber() {
    print('Enter the registration number to find the company:');
    String searchRegistNumCompany = stdin.readLineSync()!;
    final company = companies.firstWhere(
    (element) => element.registrationNumber == searchRegistNumCompany);
    print('''Company registration: \n ID: ${company.uuid} \n Registration number: ${company.showRegistNumberCompany} \n Name: ${company.companyName} \n Trade Name: ${company.tradeName} \n
    Phone number: ${company.phone} \n Adress of company: ${company.address.street}. ${company.address.number}, ${company.address.complement}, ${company.address.district}, 
    ${company.address.state}, ${company.address.showZipCode()} \n Registration time: ${company.registrationTime} ''');
  }

  void searchPartByRegistNumber() {
    print('Enter the partner registration number to find the company:');
    String searchPartRegistNumCompany = stdin.readLineSync()!;

    final partner = companies.firstWhere((element) =>
        element.partner.registrationNumber == searchPartRegistNumCompany);
    print('''Company registration: \n ID: ${partner.uuid} \n Registration number: ${partner.showRegistNumberCompany()} \n Name: ${partner.companyName} \n Trade Name: ${partner.tradeName}
    Phone number: ${partner.phone} \n Address of company: ${partner.address.street}. ${partner.address.number}, ${partner.address.complement}, ${partner.address.district}, 
    ${partner.address.state}, ${partner.address.showZipCode()} \n Partner: \n Type of the person: ${partner.partner.partnerType} \n Registration Number:  ${partner.partner.showRegistrationNumber()}
    Name: ${partner.partner.name} \n ${partner.partner.partnerType == 'L'? 'Trade Name: ${partner.partner.tradeName}':''} \n Adress of partner: ${partner.address.street}.
    ${partner.address.number}, ${partner.address.complement}, ${partner.address.district}, ${partner.address.state}, ${partner.address.showZipCode()} \n Registration time: ${partner.registrationTime} ''');

  }

  void getCompaniesOrderByCompanyName() {
     for(var i = 0; i < companies.length; i++){
      companies.sort((a, b) => a.companyName.compareTo(b.companyName));
      print('''List of companies sorted in alphabetical order(By Company Name): \n ID: ${companies[i].uuid} \n Registration number: ${companies[i].showRegistNumberCompany()} \n Name: ${companies[i].companyName} \n Trade Name: ${companies[i].tradeName} 
      Phone number: ${companies[i].phone} \n Adress of companies: \n ${companies[i].address.street}. ${companies[i].address.number}, ${companies[i].address.complement}, ${companies[i].address.district}, ${companies[i].address.state}, ${companies[i].address.showZipCode()}
      Partner: \n Registration Number:  ${companies[i].partner.showRegistrationNumber()} \n Name: ${companies[i].partner.name} \n ${companies[i].partner.partnerType == 'L'? 'Trade Name: ${companies[i].partner.tradeName}':''} 
      Adress of partner: ${companies[i].address.street}. ${companies[i].address.number}, ${companies[i].address.complement}, ${companies[i].address.district}, ${companies[i].address.state}, ${companies[i].address.showZipCode()} 
      Registration time: ${companies[i].registrationTime}''');
    
    }

  }


 dynamic removeCompanyID() {
  print('Enter with the ID to delete a registration company:');
  String byID = stdin.readLineSync()!;
    final company = companies.firstWhere((element) =>
        element.uuid == byID);
        print(' The company ${company.companyName} was successfully deleted.');
        return companies.remove(company);


  }
}



       
