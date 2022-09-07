import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/legalPerson.dart';
import 'package:cadastro_de_empresas/partner.dart';
import 'package:cadastro_de_empresas/people.dart';
import 'package:uuid/uuid.dart';


void main(List<String> arguments) {
  final company1Address = Address("Avenida Antartica", "1891", "NA","Jaguariuna", "São Paulo", "13918000");
  final registration1Time = DateTime.now();

  var uuids = Uuid().v1();
  

  Company company1 = Company(uuids, "Ambev", "Ambev.SA", "07526557000100", company1Address, "1933136000", registration1Time, "partner");
  print(company1.companyName);
  print(company1.address.zipCode);
  print(company1.uuid);
/*
  final partner1Adress = Address("Rua Dominical", "32", "NA", "Ourinhos", "São Paulo", "13918003");

  Partner partner1 = Partner("Pepsico", "Pepsico SA", "07526545000100" , "J", partner1Adress);
  print(partner1.address.street);
*/
  //final partner1Adress = Address("Rua Dominical", "32", "NA", "Ourinhos", "São Paulo", "13918003");

  LegalPerson partner1 = LegalPerson("Rua Dominical", "38", "NA", "Ourinhos", "São Paulo", "13918003", "Globo Civil", "6752654000100", "Globo SA");
  print(partner1.tradeName);

  
}


