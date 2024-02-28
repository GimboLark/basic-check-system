class Food{
  late int id;
  late String foodName;
  late List<String> foodIngradients;
  late String foodType;
  late int foodPrice;

  Food.withId(this.id,this.foodName,this.foodIngradients,this.foodType,this.foodPrice);

  Food(this.foodName,this.foodIngradients,this.foodType,this.foodPrice);

  Food.withoutInfo();
  String get getFirstName{
    return foodName;
  }
}
