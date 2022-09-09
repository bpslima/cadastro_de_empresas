//import 'package:cadastro_de_empresas/address.dart';
//import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/legalPerson.dart';
import 'package:cadastro_de_empresas/partner.dart';
//import 'package:cadastro_de_empresas/partner.dart';
import 'package:uuid/uuid.dart';


void main(List<String> arguments) {
 

  var uuids = Uuid().v1();
  //String partner1 = LegalPerson("Globo construtora", "1933136870", "Globo construtora SA", "Rua Ourinhos", "180", "NA", "São Paulo", "São Paulo", "13945670") as String;
  
  //final company1Address = Address("Avenida Antartica", "1891", "NA","Jaguariuna", "São Paulo", "13918000");
  final registration1Time = DateTime.now();
  final partner1Address = Address("Rua Dominical", "32", "NA", "Ourinhos", "São Paulo", "13918003");
  //final partner1Partner = Partner(partner1Address);

  
  
  Partner partner1 = LegalPerson("Globo Civil", "12345678904683", "Globo SA", partner1Address);
 
  Company company1 = Company(uuids,"Ambev", "Ambev SA", "12345678903", "1934569056", registration1Time, "Avenida Antartica", "1891", "NA","Jaguariuna", "São Paulo", "13918000", partner1);
 
  print(company1.companyName);
  (company1.partner.address.zipCode).showZipCode();

 
  
  
  



  

  
  
/*
  final partner1Adress = Address("Rua Dominical", "32", "NA", "Ourinhos", "São Paulo", "13918003");

  Partner partner1 = Partner("Pepsico", "Pepsico SA", "07526545000100" , "J", partner1Adress);
  print(partner1.address.street);
*/
  //final partner1Adress = Address("Rua Dominical", "32", "NA", "Ourinhos", "São Paulo", "13918003");



  
}


