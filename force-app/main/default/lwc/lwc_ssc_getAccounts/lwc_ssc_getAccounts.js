import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';
import { updateRecord } from 'lightning/uiRecordApi';

export default class Lwc_ssc_getAccounts extends LightningElement {
    @wire(getAccounts) accounts;
    columns = [
        { label: 'Name', fieldName: 'Name', editable: true },
        { label: 'Industry', fieldName: 'Industry', editable: true },
        { label: 'Phone', fieldName: 'Phone', editable: true },
    ];

    saveAccount(event) {
        const recordInputs = event.detail.draftValues.map((draft) => {
            const fields = Object.assign({}, draft);
            return { fields };
        });
        const promises = recordInputs.map((recordInput) => updateRecord(recordInput));
    }
}