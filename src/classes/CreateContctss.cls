public with sharing class CreateContctss {

    public boolean errorMessage{get;set;}
    public boolean recordInserted{get;set;}
   Id acoountID = apexpages.currentpage().getparameters().get('IdOfAccount');

    public list<Contact> contactList {get{
            if(contactList == null){
                contactList = new list<Contact>();
                System.debug('hello.....'+Contactlist);        
                for(integer i= 1; i<6; i++){
                    contactList.add(new Contact(AccountID = acoountID ));
                    System.debug('hello=='+Contactlist);
                    }
                }
                return contactlist;
                }
                set;}
    public CreateContctss(ApexPages.StandardController controller) {
        errorMessage = false;
        recordInserted= false;
    }


    Public void insertContact(){ 
        string error;  
        Database.SaveResult[] srList = Database.insert(contactlist, false); // used database.save result because if there are more required fields in future then it would be easier for us to handle 
           System.debug(srList);
           for (Database.SaveResult sr : srList) {
                if (sr.isSuccess()) {
                    // Operation was successful, so get the ID of the record that was processed
                    System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                    recordInserted= true;
                }
                else {
                // Operation failed, so get all errors                
                for(Database.Error err : sr.getErrors()) {
                    System.debug('The following error has occurred.');                    
                    System.debug(err.getStatusCode() + ': ' + err.getMessage());
                    System.debug('Account fields that affected this error: ' + err.getFields());
                    error = + err.getMessage();
                    errorMessage = true;
                    }
                }
           }
                ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,'Please fill at least one Last name ');
                ApexPages.addMessage(myMsg);
       }    
    public PageReference redirectPage(){
    try{
     insertContact();
     }catch(exception e){
                 ApexPages.AddMessages(e);
                 return null;
     }
     for(contact con : contactList){
         system.debug(con.LastName);
         if(con.LastName == ''){
            if( recordInserted == false)
            {return null;}
         }
     }

     pagereference pr= new pagereference('/'+acoountID).setRedirect(true);

         return pr;
       
    }
}