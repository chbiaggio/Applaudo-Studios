public class StringArrayTest {
    public static List<String> generateStringArray(Integer i) {
        List<String> rta = new List<String>();
        for(Integer j=0; j<i; j++){
            rta.add('Test ' + j);
        }
        return rta;
    } 
}