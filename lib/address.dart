

class Address{
  //Attributes:
  String street;
  String number;
  String complement;
  String district;
  String state;
  String zipCode;

  //Constructor:
  Address(
    this.street,
    this.number, 
    this.complement,
    this.district,
    this.state,
    this.zipCode,
  );





 

   String showZipCode(){
    if(zipCode.length==8){
       return('${zipCode.substring(0, 5)}-${zipCode.substring(5, 8)}');
    }
    return "CEP inválido";
  }

  




  
}





//Logradouro, Número, Complemento, Bairro, Estado e CEP