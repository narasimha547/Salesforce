import { LightningElement, wire, track } from 'lwc';
import createTeacher from '@salesforce/apex/lwc_create_teacher.createTeacher';
import { createRecord } from 'lightning/uiRecordApi';

export default class Lwc_create_teacher extends LightningElement {

    @track address = 'Text';
    setAddress(e) { this.address = e.target.value; }


    //@wire(createTeacher,{address: '$address'}) tea;


    saveTeacher(event) {
        createTeacher({ address: this.address }).then(response => {
            console.log(response);
        }).catch(error => {
            console.log('Error');
        });
    }

}