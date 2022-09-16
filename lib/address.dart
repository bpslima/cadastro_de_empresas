
  
class Address {
  //Attributes:
  String street;
  String number;
  String complement;
  String district;
  String city;
  String state;
  String zipCode;

  //Constructor:
  Address(
    this.street,
    this.number,
    this.complement,
    this.district,
    this.city,
    this.state,
    this.zipCode,
  );

 

  String showZipCode() {
    if (zipCode.length == 8) {
      return ('${zipCode.substring(0, 5)}-${zipCode.substring(5, 8)}');
    }
    return "Invalid Zip Code";
  }
}




  





