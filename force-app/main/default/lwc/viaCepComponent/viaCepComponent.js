import { LightningElement } from 'lwc';
import returnCep from '@salesforce/apex/ViaServiceController.returnCep';

export default class ViaCepComponent extends LightningElement {

    cep;

    handleCepChange(event){
        this.cep = event.target.value;

    }


    handlerBuscarCep(){
        
    }
}