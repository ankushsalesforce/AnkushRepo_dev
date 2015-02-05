Trigger updateOpp on Account(After update)
    {
        
        List<opportunity> opp=new List<Opportunity>();
        Map<Id, Account> accountMap = new Map<Id, Account>();
        if(recusrssionPreventController.flag1== true)
         {
               recusrssionPreventController.flag1=false;
             for(account a: Trigger.new)
                {  
                
              //  if(trigger.newMap.get(a.id)!=trigger.oldMap.get(a.id))     

                 {
                       Opportunity oppts = new Opportunity();
                       
                       // Account oldAcct = Trigger.oldMap.get(a.Id);
                            oppts.accountid=a.id;
                            oppts.name='ame';
                            oppts.CloseDate=System.today();
                            oppts.StageName='Qualification';
                        
                       opp.add(oppts); 
                   }
                  }
              insert opp;
          
          }
            
      }