trigger CaseHistoryOnCaseUsingCaseHistory on Case (after update) {
    if(recusrssionPreventController.flag1==true){
    recusrssionPreventController.flag1=false;
    list<case> caseList= new list<case>();
    list<caseHistory> caseHistoryList=[select id,NewValue,OldValue,Field,CaseId from caseHistory where caseid in : trigger.newmap.keyset() order by createddate desc];
    Map<id,List<caseHistory>> mapCaseHistory=new Map<id,List<caseHistory>>();
    for(caseHistory cs : caseHistoryList){
        if(mapCaseHistory.get(cs.CaseId )==null){
            mapCaseHistory.put(cs.CaseId,new List<caseHistory>());
        } 
        mapCaseHistory.get(cs.CaseId).add(cs);   
    }
    For(Case cas : trigger.new){
        list<caseHistory> newList = mapCaseHistory.get(cas.id);
        case cs= new case(id=cas.id);
        cs.AnkushTest__track_history__c='Changed '+newList[0].Field+' from '+newList[0].OldValue+' to '+newList[0].NewValue;
        caseList.add(cs);
    }
    update caseList;
    }
}







/*
trigger CaseHistoryTracking on Case (After update) {
      if(recusrssionPreventController.flag1==true){
    recusrssionPreventController.flag1=false;
    set<id> sid=new set<id>();
    list<CaseHistory> newList=[Select id ,Field, oldvalue, newValue from CaseHistory where CaseId in :Trigger.newMap.keySet() order by CreatedDate Desc];

    list<case> caseList= new list<case>();
    For(Case cas : trigger.new){
        case cs= new case(id=cas.id);
        cs.AnkushTest__track_history__c='Changed '+newList[0].Field+' from '+newList[0].OldValue+' to '+newList[0].NewValue;
        caseList.add(cs);
    }
    update caseList;
    }
    
}
*/