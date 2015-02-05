trigger ForecasEnable  on User (Before update) {
    //list<User> lst = new list<user>([Select id ,ForecastEnabled from user ]);
    
    for(user u : trigger.new){
        if(u.ForecastEnabled!=trigger.oldmap.get(u.id).ForecastEnabled)
        u.ForecastEnabled=true;
        //lst.add(u);
    }
   // update lst;
}