@IsTest
private class TestRestrictContactByName {
    @IsTest private static void test1(){
        Contact contacto = new Contact(Lastname='INVALIDNAME');
        Test.startTest();
        database.SaveResult result = Database.insert(contacto, false);
        Test.stopTest();
        System.assert(!result.isSuccess());
    }
}