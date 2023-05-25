import { LightningElement, wire } from 'lwc';
import getLeads from '@salesforce/apex/LeadController.getLeads';
import { updateRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { refreshApex } from '@salesforce/apex';

export default class Lwc_getleads extends LightningElement {

    @wire(getLeads) leads;
    columnsNames = [
        { label: 'Id', fieldName: 'Id' },
        { label: 'Lead Name', fieldName: 'Name', editable: true },
        { label: 'Company Name', fieldName: 'Company', editable: true }
    ]
    saveEditedLeads(event) {
        console.log(event.detail);
        console.log(event.detail.draftValues);
        const recordInputs = event.detail.draftValues.map((draft) => {
            const fields = Object.assign({}, draft);
            return { fields };
        });

        const promises = recordInputs.map((recordInput) => updateRecord(recordInput));
        let toastVariant;
        let toastMessage;
        let toastTitle;
        Promise.all(promises).then(() => {
            this.draftValues = [];
            toastVariant = 'success';
            toastMessage = 'success';
            toastTitle = 'Ok';
            
            const event1 = new ShowToastEvent({
                title: toastTitle,
                variant: toastVariant,
                message: toastMessage
            });
            this.dispatchEvent(event1);
            return refreshApex(this.wiredData);
        }).catch((error) => {
            toastVariant = 'error';
            toastMessage = 'Something went wrong';
            toastTitle = 'Error';

            const event1 = new ShowToastEvent({
                title: toastTitle,
                variant: toastVariant,
                message: toastMessage
            });
            this.dispatchEvent(event1);
            return refreshApex(this.wiredData);
            //console.error('Error saving records:', error);
        });

    }

}