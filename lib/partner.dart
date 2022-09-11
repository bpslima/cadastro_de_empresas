


import 'package:cadastro_de_empresas/address.dart';




abstract class Partner {
  //Attributes:

  String name;
  String registrationNumber;
  Address address;
  String partnerType;
  
  

  


  //Constructor:
  Partner(

    this.name, 
    this.registrationNumber,
    this.address, 
    this.partnerType,

   
);

  Object? get tradeName => null;  //se existir, ele retorna, se não, dá nulo



}




  

  





