import 'package:cadastro_de_empresas/address.dart';

class Company{
  //attributes:
  String uuid;
  String companyName;
  String tradeName;
  String registrationNumber;
  Address address;              //Call the Adress class
  String phone;
  DateTime registrationTime;
  String partner;

  //constructor:
  Company(
  this.uuid,
  this.companyName,
  this.tradeName,
  this.registrationNumber,
  this.address,
  this.phone,
  this.registrationTime,
  this.partner,

  //methods:
  //void registerCompany(){
  //  print
 // }
  );


  







}


// ID, Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP), Telefone, Horário do Cadastro e Sócio