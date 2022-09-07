import 'package:cadastro_de_empresas/address.dart';

class Partner {
  //Attributes:
  String name; //tanto nome para F quanto companyName para juridica
  String? tradeName;
  String registrationNumber;
  String typePerson;
  Address address;

  //Constructor:
  Partner(
    this.name,
    this.tradeName,
    this.registrationNumber,
    this.typePerson,
    this.address,
    
  );
  


}


//Uma Pessoa Física tem os seguintes dados: Nome, CPF e Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP).
//Uma Pessoa Jurídica tem os seguintes dados: Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP).