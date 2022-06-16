@isTest 
private class TestVerifyDate {  
    private static Date SetEndOfMonthDate(Date date1) {
		Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
		return lastDay;
	}
    
	@isTest static void test1() {
        Date date1 = Date.Today();
    	Date date2 = Date.Today().addDays(15);
        Date fecha = VerifyDate.CheckDates(date1,date2);
        System.assertEquals(date2, Date.today().addDays(15));
    }
    
    @isTest static void test2() {
        Date date1 = Date.Today();
    	Date date2 = Date.Today().addDays(15);
        System.assertEquals(VerifyDate.CheckDates(date2,date1), SetEndOfMonthDate(date2));
    }
    
    
}