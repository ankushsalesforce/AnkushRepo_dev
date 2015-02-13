public class AccountSearchController{
    public boolean check { get; set; }
    public boolean Show { get; set; }
    public boolean ShowRecords { get; set; }
    Public string ID{get;set;}
    public AccountSearchController(ApexPages.StandardController controller){
         check = false;
         Show = False;
         ShowRecords = false;         
    }
    public String accountName{get; set;}
    List<Account> accountList;
    
    public PageReference Records(){
        check= true; 
        booleanCheck();
        return null;
    }
    
    public list<Account> getAccounts(){
        String filter = '%'+accountName + '%';
        accountlist = [Select id, name from Account where Name LIKE : filter];
        System.debug(accountList.size());
        return accountlist;

    }
    
    public PageReference redirectPage(){
        ID = apexpages.currentpage().getparameters().get('IdOfAccount');
        pagereference pr= new pagereference('/apex/CreateContac?IdOfAccount='+ID).setRedirect(true);
        return pr;
    }
    
    public PageReference redirectPageToCreateAccount(){
        pagereference pr= new pagereference('/apex/CreateAccounts').setRedirect(true);
        return pr;
    }
    
    private void booleanCheck(){
        System.debug('==');
        getAccounts();
        
       if(accountList.size() == 0){
        System.debug(accountList);
       // System.debug(accountList.size());
            show= true;
            ShowRecords = false;
            
        } else{
            ShowRecords = True;
            show= false;
        }
        
    }  
 }