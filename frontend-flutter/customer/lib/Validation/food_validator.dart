mixin class FoodValidationMixin{

  String? validateFoodName(String? value){
    if(value!.length<2){
      return 'Food Name must has at least 3 character';
    }
    return null;
  }
  String? validateFoodPrice(String? value){
    var price = int.parse(value!);
    if(price<0){
      return 'Price must be greater than 0';
    }
    return null;
  }
  String? validateFoodIngradients(String? value){
    var numberOfIngradients = int.parse(value!);
    if(numberOfIngradients<1){
      return 'Number of Ingradients must be greater than 1 ';
    }
    return null;
  }
}