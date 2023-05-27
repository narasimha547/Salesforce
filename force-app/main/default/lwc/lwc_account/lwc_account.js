import { LightningElement, api, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';

const FIELDS = [
    'Account.Name',
    'Account.Phone',
    'Account.Email'
];

export default class Lwc_account extends LightningElement {

    @api recordId = '0015j00000zdEQOAA2';
    @wire(getRecord, { recordId: '$recordId', fields: FIELDS }) account;
    
    get displayname() {
        console.log("getname : "+this.account.data.fields.Name.value);
        //return this.account.data.fields.Name.value;
        return this.account.data ? this.account.data.fields.Name.value : '';
    }
    /*get getphone() {
        return this.account.data.fields.Phone.value;
    }
    get getemail() {
        return this.account.data.fields.Email.value;
    }*/
    
    /*
    @api recordId = '0015j00000zdEQOAA2'; // Id of the record to retrieve

    //@wire(getRecord, { recordId: '$recordId', fields: ['Account.Name', 'Account.Phone'] }) account;
    @wire(getRecord, { recordId: '$recordId', fields: FIELDS }) account;

    get accountName() {
        return this.account.data ? this.account.data.fields.Name.value : '';
    }

    get accountPhone() {
        return this.account.data ? this.account.data.fields.Phone.value : '';
    }*/

}