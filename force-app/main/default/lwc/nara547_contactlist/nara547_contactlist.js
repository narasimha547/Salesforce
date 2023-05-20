import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class ContactCreationForm extends NavigationMixin(LightningElement) {
  handleSubmit(event) {
    event.preventDefault();
    const fields = event.detail.fields;
    // Perform additional validation if needed
    this.template.querySelector('lightning-record-form').submit(fields);
  }

  handleSuccess(event) {
    // Handle successful contact creation
    const contactId = event.detail.id;
    console.log('Contact created with ID:', contactId);
    const recordId = contactId; // Replace with the actual record ID
    this.navigateToRecordDetail(recordId);
  }
  navigateToRecordDetail(recordId) {
    this[NavigationMixin.Navigate]({
      type: 'standard__recordPage',
      attributes: {
        recordId: recordId,
        actionName: 'view'
      }
    });
  }
}