// Normal Customer Class
public class NormalCustomer implements DiscountProcessor {
   
   // Method Call
   public Double percentageDiscountTobeApplied () {
      
      // For Premium customer, discount should be 10%
      return 0.10;
   }
}