import { LightningElement, track, wire } from 'lwc';
import getContactsList from '@salesforce/apex/lwc_ssc_getContacts.getContactsList';
import { updateRecord } from 'lightning/uiRecordApi';


const COLOUMNSSS = [
    { label: 'First Name', fieldName: 'FirstName', editable: true },
    { label: 'Last Name', fieldName: 'LastName', editable: true }
]
export default class Lwc_ssc_getContacts extends LightningElement {
    @track draftValue;

    @track col = COLOUMNSSS;

    @wire(getContactsList) contacts;
    handleSave(event) {
        const recordInputs = event.detail.draftValue.map((draft) => {
            const fields = Object.assign({}, draft);
            return { fields };
        });
        recordInputs.map((recordInput) => updateRecord(recordInput));
    }
}
