
import 'package:cadastro_de_empresas/partner.dart';



class LegalPerson extends Partner  {
  
  @override
  String tradeName;
  

  

  LegalPerson (
    super.name,
    this.tradeName,
    super.registrationNumber,
    super.address,
    super.partnerType,
    
   
    
    
  ); 

 

/*
  String showRegistrationNumber(){
    if(registrationNumber.length==14){
       return('${registrationNumber.substring(0, 2)}.${registrationNumber.substring(2, 5)}.${registrationNumber.substring(5, 8)}/${registrationNumber.substring(8, 12)}-${registrationNumber.substring(12, 14)}');
    }
  return "invalid registration number";
  }
*/
    
}
    
