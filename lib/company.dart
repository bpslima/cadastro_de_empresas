import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/partner.dart';

class Company  {
  //attributes:
  
  String companyName;
  String tradeName;
  String registrationNumber;
  String phone;
  Address address;
  Partner partner;
  DateTime registrationTime;
  String uuid;
  

  //constructor:
  Company(
  
  this.companyName,
  this.tradeName,
  this.registrationNumber,
  this.phone,
  this.address,
  this.partner,
  this.registrationTime,
  this.uuid,

  );

get getAddress{
  return address;
}

  get addressCompany => null;



 // void sort(Function(dynamic a, dynamic b) param0) {}
/*
  void remove(String removendo) {}

  void add(String adicionando) {}
*/                             

}

  








// ID, Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP), Telefone, Horário do Cadastro e Sócio