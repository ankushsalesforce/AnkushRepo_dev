//This trigger adds opportunity line item when an asset is added . Also this bulkified . No need of mapping 
trigger InsertOpp on Asset (after insert) {
    list<opportunity> oplst = new list<opportunity>();
    set<id> Setproductid = new Set<id>();
    map<id, list<opportunity>> mapAcct = new map<id, list<opportunity>>();
    list<OpportunityLineItem> olst = new list<OpportunityLineItem>();
    for(Asset aas : trigger.new){
        Setproductid.add(aas.product2id);
        opportunity op= new opportunity();
        op.name = aas.name;
        op.StageName = 'Closed Won';
        op.CloseDate = system.today();
        op.accountid=aas.accountid;
        oplst.add(op);
        if(mapAcct.get(aas.accountid) == null){
            mapAcct.put(aas.accountid,new list<opportunity>());
        }
        mapAcct.get(aas.accountid).add(op);
        system.debug('=====map'+mapAcct);
        system.debug('=====op'+olst);
    }
    insert oplst;
    PricebookEntry pe =[SELECT Id FROM PricebookEntry WHERE IsActive = true  limit 1];
    map<id, list<OpportunityLineItem>> mapid = new map<id, list<OpportunityLineItem>>();
    for(opportunity oppt : oplst){
        OpportunityLineItem ol = new OpportunityLineItem();
        //Pricebook2  pp;
        ol.Opportunityid = oppt.id;
        integer numb=3;
        ol.Quantity=numb;
        ol.TotalPrice =numb;
        ol.PricebookEntryid = pe.id;
        insert ol; 
    }
}