/*import { LightningElement, track } from 'lwc';

export default class Nara547_account_create extends LightningElement {

    @track name;

    Add(){
        //this.name = event.target.Name;
        console.log('name '+this.name);
    }
    assignValues(event){
        this.name = event.target.Name;
    }
}
*/

import { LightningElement, track } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';

export default class Nara547_account_create extends LightningElement {
  @track accountName = '';
  @track accountNumber = '';
  @track AccountId="";

  handleNameChange(event) {
    this.accountName = event.target.value;
  }

  handleNumberChange(event) {
    this.accountNumber = event.target.value;
  }

  createAccount() {
    const fields = {
      Name: this.accountName,
      AccountNumber: this.accountNumber
    };
    console.log('Fields : ' + fields);
    const recordInput = { apiName: 'Account', fields };
    createRecord(recordInput).then(result => {
      this.AccountId = result.id
      console.log('Account created with Id:', result.id);
      this.createContact();
    }).catch(error => {
      console.error('Error creating account:', error);
    });
  }

  createContact() {
    //const contact_fields = { LastName: 'Putha' ,AccountId: this.AccountId};
    const contact_fields = { 
      FirstName: 'Narasimha',
      LastName: this.accountName,
      Email: 'narasimha547@gmail.com',
      Phone: '1234567890',
      AccountId: this.AccountId
    };
    const contact_recordInput = { apiName: 'Contact', contact_fields };
    createRecord(contact_recordInput).then(result => {
      console.log('Contact created with Id:', result.id);
    }).catch(error => {
      console.error('Error creating contact:', error);
    });
  }
}