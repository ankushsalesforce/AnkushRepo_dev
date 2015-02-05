/*I need a trigger with before events for the below scenario:
We have a Case object having a lookup relationship with opportunity as LX_Opportunity__c and Contact as ContactId.
I wanted the below fields to get populated when case object is saved 
LX_Sales_ORG__c on case object should be poulated with LX_Sales_Organization__c from opportunity
LX_Payment_Terms_Lead__c on case object should be poulated with Payment_Terms__c from opportunity
LX_Case_Contact_Region__c on case object should be poulated with pse__Region__c from Contact.
Note: You should only query case object not opportunity or contact.
example query :
Select id,LX_Opportunity__R.LX_Sales_Organization__c,LX_Opportunity__R.Payment_Terms__c,Contact.pse__Region__c from cASE WHERE.
*/
trigger FieldpopulatedFromOpportunity  on Case (Before insert, Before Update) {
    
    set<id> caseIds = new set<id>();
    list<case> opp= new List <case>();
    for(Case c: trigger.new){
        
//        c.AnkushTest__LX_Sales_ORG__c=
          caseIds.add(c.AnkushTest__LX_Opportunity__c);
          system.debug('===case'+c);
          system.debug('==='+caseIds);
    }
    Map<id,Opportunity>  mapopp = new Map<id,opportunity>([Select id, AnkushTest__LX_Sales_Organization__c from opportunity where Id in : caseIds]);
    //mapopp  =  [];
   // system.debug('===op'+op);
    //case c =[Select id from case where id in : caseIds];
    
    for(case cs : trigger.new){
    cs.AnkushTest__LX_Sales_ORG__c = mapopp.get(cs.AnkushTest__LX_Opportunity__c).AnkushTest__LX_Sales_Organization__c ;
    //insert cs;
    opp.add(cs);
    system.debug('===case2'+trigger.new);
    }
    
    
  
  
}