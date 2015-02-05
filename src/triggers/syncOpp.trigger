trigger syncOpp on Quote (After Insert, after Update) {
   
       
    
     Set<id> sid =new Set<id>();
    List<opportunity> opp=new List<opportunity> ();
    for(Quote q: trigger.new){
            sid.add(q.opportunityid);
    }
          list<opportunity> oplst= [Select id , Amount from opportunity where id in: sid];  
          system.debug(oplst);
          For(opportunity o:oplst ){
            for(Quote q: trigger.new){
                if(q.CkeckSync__c=='True'){
                o.Amount=q.MyTotal__c ;
                
                 opp.add(o);   
                }
                
            }
        Update opp;    
   
}}