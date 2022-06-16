@isTest
public class ParkLocatorTest {
	@isTest
    public static void test(){
		Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        //Double x = 1.0;
        //Double result = AwesomeCalculator.add(x, y);
        
        String country = 'Germany';
        String[] result = ParkLocator.Country(country);
        
        
        // Verify that a fake result is returned
        System.assertEquals(new List<String>{'Parque Lezana', 'Parque Chacarita'}, result); 
    }
}