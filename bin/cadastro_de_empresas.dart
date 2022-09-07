import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/partner.dart';


void main(List<String> arguments) {
  final company1Address = Address("Avenida Antartica", "1891", "NA","Jaguariuna", "São Paulo", "13918000");
  final registration1Time = DateTime.now();
  Company company1 = Company("uuid", "Ambev", "Ambev.SA", "07526557000100", company1Address, "1933136000", registration1Time, "partner");
  print(company1.companyName);
  print(company1.address.zipCode);

  final partner1Adress = Address("Rua Dominical", "32", "NA", "Ourinhos", "São Paulo", "13918003");

  Partner partner1 = Partner("Pepsico", "Pepsico SA", "07526545000100" , "J", partner1Adress);
  print(partner1.address.street);
  
}
