


import 'package:cadastro_de_empresas/address.dart';




abstract class Partner {
  //Attributes:
  String partnerType;
  String name;
  String registrationNumber;
  Address address;
  
  
  

  


  //Constructor:
  Partner(
    this.partnerType,
    this.name, 
    this.registrationNumber,
    this.address, 
   

   
);

  Object? get tradeName => null;  //se existir, ele retorna, se não, dá nulo



}




  

  





