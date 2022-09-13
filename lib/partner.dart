


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

String showRegistrationNumber(){
    if(registrationNumber.length==14){
       return('${registrationNumber.substring(0, 2)}.${registrationNumber.substring(2, 5)}.${registrationNumber.substring(5, 8)}/${registrationNumber.substring(8, 12)}-${registrationNumber.substring(12, 14)}');
    } else if (registrationNumber.length==11){
       return('${registrationNumber.substring(0, 3)}.${registrationNumber.substring(3, 6)}.${registrationNumber.substring(6, 9)}-$registrationNumber.substring(9, 11)}');
    } else {
     return "invalid registration number";
  }


}

}


  

  





