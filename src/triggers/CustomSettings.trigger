trigger CustomSettings on Account (before insert,before update) {
    if(trigger.isInsert){
    for(Account ac: trigger.new){
        AnkushTest__prefix__c acs =AnkushTest__prefix__c.getOrgDefaults();
        string st;
        st= String.valueOf(acs.AnkushTest__prefix__c)+Integer.valueOf(acs.AnkushTest__sample__c+1);
        system.debug(st);
        ac.AnkushTest__samplePrefix__c=st;
        
        acs.AnkushTest__sample__c=integer.valueof(st.substring(4,5));
        update acs;
        
        }
    }
    if(trigger.isUpdate){
        for(Account acc: trigger.new){

        
        AnkushTest__prefix__c acs =[select AnkushTest__sample__c,AnkushTest__prefix__c, name from AnkushTest__prefix__c limit 1];

        string st;
        st= acs.AnkushTest__prefix__c+integer.valueof(acs.AnkushTest__sample__c+1);
        system.debug('))))))))))'+st);
        acc.AnkushTest__samplePrefix__c=st;
       
        acs.AnkushTest__sample__c=integer.valueof(st.substring(4,5));
        update acs;
        }
       
    }    

}