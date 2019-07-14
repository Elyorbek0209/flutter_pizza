
class pizza{

  static List<String> sizes = <String>["Small", "Medium", "Large"];

  String size = sizes.elementAt(0);

  Map<String, bool> toppings = new Map<String,bool>();


  pizza(){

    toppings.putIfAbsent("Pepproni",() => false);

    toppings.putIfAbsent("Sausage",() => false);
    
    toppings.putIfAbsent("Cheese",() => false);
    
    toppings.putIfAbsent("Pineapple",() => false);
    
    toppings.putIfAbsent("Onions",() => false);
    
    toppings.putIfAbsent("Pickles",() => false);

    toppings.putIfAbsent("Chocolate",() => false);
    
    toppings.putIfAbsent("Banana",() => false);
    
    toppings.putIfAbsent("Spinach",() => false);
    
    toppings.putIfAbsent("Steack",() => false);
    
    toppings.putIfAbsent("Chicken",() => false);
    
    toppings.putIfAbsent("Blueberry",() => false);
    
  }


}
