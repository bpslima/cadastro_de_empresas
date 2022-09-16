   
import 'package:cadastro_de_empresas/partner.dart';

class LegalPerson extends Partner {
  @override
  String tradeName;

  LegalPerson(
    super.name,
    this.tradeName,
    super.registrationNumber,
    super.address,
    super.partnerType,
  );
}