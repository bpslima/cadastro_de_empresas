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
  String _uuid;
  

  //constructor:
  Company(

  this._uuid,
  this.registrationNumber,
  this.companyName,
  this.tradeName,
  this.phone,
  this.address,
  this.partner,
  this.registrationTime,
  

  );

                           

String showRegistNumberCompany(){
    if(registrationNumber.length==14){
       return('${registrationNumber.substring(0, 2)}.${registrationNumber.substring(2, 5)}.${registrationNumber.substring(5, 8)}/${registrationNumber.substring(8, 12)}-${registrationNumber.substring(12, 14)}');
    } else {
     return "invalid registration number";
  }
}
dynamic showphone(){
  if(phone.length>=10){
    return('(${phone.substring(0,2)})');
  } 
}
get uuid{
 return  _uuid;
}
dynamic nameFormatted(){
   dynamic companyName = " ";
   List <String> palavras = companyName.split(" ");
   for (int i = 0; i < palavras.length; i++) {
    palavras[i] = palavras[i][0].toUpperCase() + palavras[i].substring(1);
}

return palavras.join(" ");

   

}


}





  








// ID, Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP), Telefone, Horário do Cadastro e Sócio