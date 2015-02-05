public class CreateAccountExten {

    public CreateAccountExten(ApexPages.StandardController controller) {

    }
    
    public PageReference redirectPageToContact(){
        pagereference pr= new pagereference('/').setRedirect(true);
        return pr;
    } 

}