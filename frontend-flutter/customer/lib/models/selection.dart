class Selection{
  late String id;
  late String name;
  late bool selected;
  late double price;

  Selection.withId(this.id,this.name,this.selected,this.price);
  Selection.require({required this.selected, required this.price});
  Selection(this.name,this.selected,this.price);
}


