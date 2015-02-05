trigger SampleTrigger on Opportunity (after insert) 
{
    List<Account> lstofaccnt = new list<account>();
    List<Opportunity> lstofopp = new list<opportunity>();
    For(Opportunity TheOpportunity : trigger.new)
    {
    if(TheOpportunity.amount > 50000)
    {
       List <Account> theAccount= [Select Type, name from Account where id =: theOpportunity.Accountid];
          for (Account a: theAccount){
            a.type='Prospect';
            lstofaccnt.add(a);
        }    
    }
        lstofopp.add(TheOpportunity);
    
    }
    //update lstofopp ;
                update lstofaccnt;
                //
}