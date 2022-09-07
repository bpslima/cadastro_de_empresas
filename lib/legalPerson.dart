import 'package:cadastro_de_empresas/address.dart';


class LegalPerson extends Address{
  String companyName;
  String registrationNumber;
  String tradeName;

  

  LegalPerson(
     this.companyName,
    this.registrationNumber,
    this.tradeName,
    super.street,
    super.number,
    super.complement,
    super.district,
    super.state,
    super.zipCode,
  );
    
}