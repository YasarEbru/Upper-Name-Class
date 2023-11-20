public class UpperName implements Schedulable{
    public void execute (SchedulableContext context){
        List < Member__c> memberList =[SELECT Id , Name ,Name__c ,Surname__c FROM Member__c];
        for(Member__c w: memberList){
            w.Name__c=W.Name__c.toLowerCase().capitalize();
            w.Surname__c=w.Surname__c.toUpperCase();
        }
        update memberList;
    }

}