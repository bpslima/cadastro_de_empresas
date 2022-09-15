

class Address{
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


  //methods:

  dynamic stateFormatted(){
  if (state.length == 2) {
      final initials = [
        'AC',
        'AL',
        'AP',
        'AM',
        'BA',
        'CE',
        'DF',
        'ES',
        'GO',
        'MA',
        'MT',
        'MS',
        'MG',
        'PA',
        'PB',
        'PR',
        'PE',
        'PI',
        'RJ',
        'RN',
        'RS',
        'RO',
        'RR',
        'SC',
        'SP',
        'SE',
        'TO'
      ];
      return state = initials.contains(state.toUpperCase())? state.toUpperCase() : '';
    } 
      switch (state) {
        case 'acre':
          state = 'AC';
          break;
        case 'alagoas':
          state = 'AL';
          break;
        case 'amapá':
          state = 'AP';
          break;
        case 'amazonas':
          state = 'AM';
          break;
        case 'bahia':
          state = 'BA';
          break;
        case 'ceará':
          state = 'CE';
          break;
        case 'distrito federal':
          state = 'DF';
          break;
        case 'espírito santo':
          state = 'ES';
          break;
        case 'goiás':
          state = 'GO';
          break;
        case 'maranhão':
          state = 'MA';
          break;
        case 'mato grosso':
          state = 'MT';
          break;
        case 'mato grosso do sul':
          state = 'MS';
          break;
        case 'minas gerais':
          state = 'MG';
          break;
        case 'pará':
          state = 'PA';
          break;
        case 'paraíba':
          state = 'PB';
          break;
        case 'paraná':
          state = 'PR';
          break;
        case 'pernambuco':
          state = 'PE';
          break;
        case 'piauí':
          state = 'PI';
          break;
        case 'rio de janeiro':
          state = 'RJ';
          break;
        case 'rio grande do norte':
          state = 'RN';
          break;
        case 'rio grande do sul':
          state = 'RS';
          break;
        case 'rondônia':
          state = 'RO';
          break;
        case 'roraima':
          state = 'RR';
          break;
        case 'santa catarina':
          state = 'SC';
          break;
        case 'são paulo':
          state = 'SP';
          break;
        case 'sergipe':
          state = 'SE';
          break;
        case 'tocantins':
          state = 'TO';
          break;
        default:
          state = '';
          break;
      }
    } 
    
   String showZipCode(){
    if(zipCode.length==8){
       return('${zipCode.substring(0, 5)}-${zipCode.substring(5, 8)}');
    }
    return "Invalid Zip Code";
  }
}
  




  





