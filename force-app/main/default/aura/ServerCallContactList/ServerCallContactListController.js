({
	doAction : function(component, event, helper) {
        var action = component.get('c.getContactList');
        
        action.setParams({});
        action.setCallback(this,function(response){
            var responseValue = response.getReturnValue();
        },'SUCCESS');
        $A.enqueueAction(action,false);
        
		
	}
})