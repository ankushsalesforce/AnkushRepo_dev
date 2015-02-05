trigger PublishlinkOnChatter on ContentDocument (After insert,After Update) {
    list<FeedItem> lst=new List<feedItem>();
    for(ContentDocument cd:trigger.new){
            FeedItem fi= new FeedItem();
            fi.LinkUrl='https://na15.salesforce.com/'+cd.LatestPublishedVersionId;
            fi.parentid=userinfo.getUserID();
            fi.body='this First Post';
            lst.add(fi);
        }
        insert lst;
     }