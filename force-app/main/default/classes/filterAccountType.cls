public with sharing class filterAccountType {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(String type) {
        return [SELECT ID,Name,Type from Account where Type=:type limit 5];
    }
}