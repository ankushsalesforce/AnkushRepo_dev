trigger UpdateOpportunity on Quote_Line_Items__c (After Insert, after Update) {
     Set<id> sid =new Set<id>();
     List<opportunity> opp=new List<opportunity> ();
     Set<id> sid1 =new Set<id>();
    for(Quote_Line_Items__c q: trigger.new){
            sid.add(q.Quote__c);
    }
        list<Quote> qli= [Select id, MyTotal__c,CkeckSync__c,opportunityid from Quote where id in: sid];
        for(Quote q: qli){
            sid1.add(q.opportunityid);
                
            }
          list<opportunity> oplst= [Select id , Amount from opportunity where id in: sid1];  
          For(opportunity o:oplst ){
              
        for(Quote q: qli){
            if(q.CkeckSync__c=='True'){
            o.Amount=q.MyTotal__c ;
            
             opp.add(o);   
            }
            
        }
        Update opp;    
   }
}