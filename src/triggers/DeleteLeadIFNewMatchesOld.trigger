trigger DeleteLeadIFNewMatchesOld on Attachment (Before insert) {
    Set<Id> setOfNewLead = new Set<Id>();
    Set<String> setOfMyname = new Set<String>();
    Set<Id> setOfDeleteLeads = new Set<Id>();
    for(attachment a : trigger.new ){
        setOfNewLead.add(a.ParentId);
    }
    Map<Id,lead> mapOfNewLead = new Map<Id,Lead>([Select id , My_name__c from Lead where id in :  setOfNewLead]);
    Map<Id,Lead> mapOfOldLead = new Map<Id,Lead>([Select id , My_name__c from Lead where  id not in :  setOfNewLead]); 
//    Map<Id,String> = new Map<Id,String>();
    System.debug(mapOfOldLead);
    	//if(mapOfNewLead.get(a.ParentId).My_name__c == mapOfOldLead.get())
        for(Lead ld : mapOfNewLead.values()){
           //System.debug('myname'+myname);
            System.debug('mapOfNewLead.values()'+mapOfNewLead.get(ld.Id).My_name__c);
            String myname = mapOfNewLead.get(ld.Id).My_name__c;
            setOfMyname.add(myname);
        }/*
        for(Lead ld : mapOfOldLead.values()){
           //System.debug('myname'+myname);
            System.debug('mapOfOldLead.values()'+mapOfOldLead.get(ld.Id).My_name__c);
            String myname = mapOfOldLead.get(ld.Id).My_name__c;
            setOfMyname.add(myname);
        }*/
        for(attachment a : trigger.new ){
            System.debug(setOfMyname);
            System.debug('==19'+mapOfNewLead.get(a.ParentId).My_name__c);
                System.debug('===');
                //Id testId = [Select Id from Lead where My_name__c in]
                for(Id getIdMap : mapOfOldLead.keySet()){
                    if(setOfMyname.contains(mapOfOldLead.get(getIdMap).My_name__c)){
                        setOfDeleteLeads.add(a.ParentId);
                        a.ParentId = getIdMap;
                }

            }
        }
        List<Lead> deleteList = [Select id from Lead where Id in : setOfDeleteLeads];
        delete deleteList;
}