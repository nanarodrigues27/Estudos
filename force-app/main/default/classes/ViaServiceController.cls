public with sharing class ViaServiceController {
    @AuraEnabled
    public static ViaCep returnCep(String cep){
       return ViaCepService.searchByCep(cep);
         
    }
    
}