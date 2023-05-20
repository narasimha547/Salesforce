({
	helperMethod : function() {
		
	}
})
({
    openAlert: function(cmp, event) {
        this.LightningAlert.open({
            message: 'this is the alert message',
            theme: 'error',
            label: 'Error!',
        }).then(function() {
            console.log('alert is closed');
        });
    }
});