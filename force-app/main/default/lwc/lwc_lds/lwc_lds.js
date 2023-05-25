import { LightningElement, api } from 'lwc';

export default class Lwc_lds extends LightningElement {
    @api recordId ;//= '0015j00000zdEQOAA2';

    reset(){
        const allFields = this.template.querySelectorAll('lightning-input-field').forEach(field1 => { 
            console.log("helo1 "+field1);
            field1.value = null;
        });
    }
}