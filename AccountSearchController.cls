public class AccountSearchController{
    public boolean check { get; set; }
    public boolean Show { get; set; }
    Public string ID{get;set;}
    public AccountSearchController(ApexPages.StandardController controller){
         check = false;
         Show = False;         
    }
    public String accountName{get; set;}
    List<Account> accountList;
    
    public PageReference Records(){
        check= true; 
        method();
        return null;
    }
    
    public list<Account> getAccounts(){
        String filter = '%'+accountName + '%';
        accountlist = [Select id, name from Account where Name LIKE : filter];
        System.debug(accountList.size());
        return accountlist;

    }
    
    public PageReference redirectPage(){
        ID = apexpages.currentpage().getparameters().get('name1');
        pagereference pr= new pagereference('/apex/CreateContac?name1='+ID).setRedirect(true);
        return pr;
    }
    
    public PageReference redirectPageToContact(){
        pagereference pr= new pagereference('/apex/CreateAccounts').setRedirect(true);
        return pr;
    }
    
    public void method(){
        getAccounts();
        if(accountList.size() == 0){
        System.debug(accountList.size());
            show= true;
        }
    }
 }