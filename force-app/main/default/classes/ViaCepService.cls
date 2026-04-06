public with sharing class ViaCepService {
    public static ViaCep searchByCep(String cep){

        String endpoint = 'https://viacep.com.br/ws/' + cep + '/json/';

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');

        try {
            HttpResponse response = http.send(request);
            if(response.getStatusCode() == 200){
                String body = response.getBody();
                ViaCep address = (ViaCep)JSON.deserialize(body, ViaCep.class);
                return address;
            }
        
        } catch (Exception e) {
            System.debug('The following exception has occurred: ' + e.getMessage());
            
        }
        return null;
    }
}