public with sharing class CreateContctss {
    public list<Contact> contactList {get{
            if(contactList == null){
                contactList = new list<Contact>();
                System.debug('hello.....'+Contactlist);        
                for(integer i= 1; i<5; i++){
                    contactList.add(new Contact());
                    System.debug('hello=='+Contactlist);
                    }
                }
                return contactlist;
                }
                set;}
    public CreateContctss(ApexPages.StandardController controller) {
    }

    Id acoountID = apexpages.currentpage().getparameters().get('IdOfAccount');
    
    Public void insertContact(){      
        Database.SaveResult[] srList = Database.insert(contactlist, false); // used database.save result because if there are more required fields in future then it would be easier for us to handle 
       }
    
    public PageReference redirectPage(){
     insertContact();
     pagereference pr= new pagereference('/'+acoountID).setRedirect(true);
     return pr;
       }
}