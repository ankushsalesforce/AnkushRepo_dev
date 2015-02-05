public with sharing class CreateContctss {
    List<Contact> contList = new list<Contact>();
    public CreateContctss(ApexPages.StandardController controller) {
    }
    public string name1{get ; set;}
    public string name2{get ; set;}
    public string name3{get ; set;}
    public string name4{get ; set;}
    public string name5{get ; set;}
    
    public string Email1{get ; set;}
    public string Email2{get ; set;}
    public string Email3{get ; set;}
    public string Email4{get ; set;}
    public string Email5{get ; set;}
    
    Account account= new Account();
    Id acoountID = apexpages.currentpage().getparameters().get('name1');
    
    Public void insertContact(){
        contList.clear();
        contact con;
        System.debug('accountId'+apexpages.currentpage().getparameters().get('name1'));
        if(string.isnotBlank(name1)&& string.isnotBlank(Email1)){
            con= new Contact();
            con.Lastname = name1;
            con.email = email1;
            con.AccountId = acoountID ;
            contList.add(con);
            System.debug('==1');
            System.debug('==name1'+name1);
        }
        if(string.isnotBlank(name2)&& string.isnotBlank(Email2)){
            con= new Contact();
            con.Lastname = name2;
            con.email = email2;
            con.AccountId = acoountID ;
            contList.add(con);
            System.debug('==2');
            System.debug('==name2'+name2);            
        }
        if(string.isnotBlank(name3)&& string.isnotBlank(Email3)){
            con= new Contact();
            con.Lastname = name3;
            con.email = email3;
            con.AccountId = acoountID ; 
            contList.add(con);
            System.debug('==3');           
        }
        if(string.isnotBlank(name4)&& string.isnotBlank(Email4)){
            con= new Contact();
            con.Lastname = name4;
            con.email = email4; 
            con.AccountId = acoountID ;
            contList.add(con);  
            System.debug('==4');         
        }
        if(string.isnotBlank(name5)&& string.isnotBlank(Email5)){
            con= new Contact();
            con.Lastname = name5;
            con.email = email5; 
            con.AccountId = acoountID ;
            contList.add(con);  
            System.debug('==5');         
        }  
      insert contList;                      
    }
    public PageReference redirectPage(){
     insertContact();
    pagereference pr= new pagereference('/'+acoountID).setRedirect(true);
        return pr;
        }
}