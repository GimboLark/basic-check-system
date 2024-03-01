import 'package:customer/models/selections.dart';
import 'package:customer/models/selection.dart';


class Food{
  late String id;
  late String img;
  late String name;
  late String description;
  late double basePrice;
  late Selections selections;

  Food.Require({required this.basePrice});

  Food.withId(this.id,this.img,this.name,this.description,this.basePrice,this.selections);
  Food(this.img,this.name,this.description,this.basePrice,this.selections);

  Food.withoutInfo();
  String get getFirstName{
    return name;
  }
  double calculatePrice(){
    if(selections != null){
      final selectedPrices = selections
          .where((selection) => selection.selected)
          .map((selection) => selection.price)
          .toList()
          .reduce((a,b)=>a + b);
      return basePrice+selectedPrices;
    }
    return basePrice;
  }
}
