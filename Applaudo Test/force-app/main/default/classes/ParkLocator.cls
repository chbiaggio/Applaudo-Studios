public class ParkLocator {
    public static String[] country(String country){
        parkService.ParksImplPort park = new parkService.ParksImplPort();
        return park.byCountry(country);
    }
}