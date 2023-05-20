<aura:application >
    <aura:attribute name="truthy" default="false" type="Boolean"/>
    <aura:attribute name="simpleList" default="[10,20,30,40,50]" type="List"/>
    <aura:attribute name="simpleMap" type="List"/>
    <aura:if isTrue="{!v.truthy}">
        True
        <aura:set attribute="else">
            False
        </aura:set>
    </aura:if> 
    
    <aura:iteration items="{!v.simpleList}" var="item">
        {!item}<br/>
    </aura:iteration>
    
    <aura:iteration items="{!v.simpleMap}" var="item">
        {!item.key} : {!item.value}<br/>
    </aura:iteration>
                    
    <lightning:button label="Show Map" onclick="{!c.genMap}" />
</aura:application>