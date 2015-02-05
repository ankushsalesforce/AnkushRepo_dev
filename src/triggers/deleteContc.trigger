Trigger deleteContc on Account(after update)
    {     
        List<Account> acc = new List<account>();
        List<contact> con =[Select id , name from contact ];
              For(Account a: trigger.old){
                   if(a.AnnualRevenue<10000)
        {
             acc.add(a);
             }
             }
             Delete con;
             
             }