import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/partner.dart';

class Company  {
  //attributes:
  String uuid;
  String companyName;
  String tradeName;
  String registrationNumber;
  String phone;
  DateTime registrationTime;
  Address address;
  Partner partner;
  

  //constructor:
  Company(
  this.uuid,
  this.companyName,
  this.tradeName,
  this.registrationNumber,
  this.phone,
  this.registrationTime,
  //this.address,
  this.address,
  this.partner,

  );
/*
  void remove(String removendo) {}

  void add(String adicionando) {}
*/                             

}

  








// ID, Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP), Telefone, Horário do Cadastro e Sócio