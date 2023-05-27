import { createRecord, deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement, track, wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';
import { updateRecord } from 'lightning/uiRecordApi';

const COLOUMNSSS = [
    { label: 'Name', fieldName: 'Name', editable: true }
]

export default class Lwc_create_account_with_wire extends NavigationMixin(LightningElement) {
    @track name;
    @track phone;
    @track email;
    @track recordId;
    @track ObjectName;
    @track cols = COLOUMNSSS;

    setName(e) { this.name = e.target.value; }
    setPhone(e) { this.phone = e.target.value; }
    setEmail(e) { this.email = e.target.value; }

    saveAccount() {
        const FIELDS = { 'Name': this.name, 'Phone': this.phone, 'Email': this.email };
        const recordInputs = { apiName: 'Account', fields: FIELDS };
        console.log(FIELDS);
        createRecord(recordInputs).then(response => {
            this.recordId = response.id;
            this.ObjectName = recordInputs.apiName;
            console.log(response);
            console.log('record Id : ' + this.recordId);
            this.navigateToPage();
        }).catch(error => {
            console.log('Error : ' + error.body.message);
        });
    }

    deleteAccount() {
        deleteRecord(this.recordId).then(response => {
            alert('Record Deleted succesfully');
        }).catch(error => {
            alert('Something went wrong record not deleted.');
        });
    }

    navigateToPage() {
        // Set up the page reference object
        const pageRef = {
            type: 'standard__recordPage',
            attributes: {
                recordId: this.recordId, // Replace with the record ID you want to navigate to
                objectApiName: this.ObjectName, // Replace with the object API name
                actionName: 'view' // Replace with the action name (e.g., edit, view, clone)
            }
        };

        // Navigate to the page using the NavigationMixin
        this[NavigationMixin.Navigate](pageRef);
    }
}