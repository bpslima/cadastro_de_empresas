
import 'package:cadastro_de_empresas/address.dart';

class NaturalPerson extends Address{
  String name;
  String cpf;
  

  

  NaturalPerson(
    this.name,
    this.cpf,
    super.street,
    super.number,
    super.complement,
    super.district,
    super.state,
    super.zipCode,
    
  
  );
    
}