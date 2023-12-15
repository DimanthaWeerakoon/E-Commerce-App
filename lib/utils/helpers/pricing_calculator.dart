class EPringCalculator {

  /// Calculate the prize based on tax and shipping
  static double calculatePrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location using a shipping rate API.
    // Return the appropriate tax rate.
    return 0.10; // Example tax rate of 10%
  }

  static double getShippingCost(String location) {
    // Lookup the shipping cost for the given location using a shipping rate API.
    // Calculate the shipping const based on various factors like distance, wieght, etc.
    return 5.00;
  }

  /// -- Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  // return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice = (currentPrice ?? 0));
  // }
}