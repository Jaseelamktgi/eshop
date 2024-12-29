class AppPricingCalculator {
  // calculate price based on tax & shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxtRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxtRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  // calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);

    return shippingCost.toStringAsFixed(2);
  }

  // calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxtRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxtRate;

    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // lookup tax rate for the given location from a database or API
    // return the appropriate tax rate based on the location
    return 0.10; // eg tax rate of 10%
  }

  static double getShippingCost(String location) {
    // lookup shipping cost for the given location using a shipping rate API
    // calculate the shipping cost based on varios factors like distance, weight etc
    return 5.0; // eg shipping cost of $5
  }

  // sum all cart values & return total amount
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousValue, currentPrice) => previousValue + (currentPrice ?? 0.0));

  // }
}
