import 'dart:ffi';
import 'package:customer/models/selection.dart';

class Selections{
  late String id;
  late String description;
  late bool mustChoose;
  late bool radioOrChechbox;
  late Uint32? selectionCountLimit;
  late List<Selection>? selections;

  Selections.withId(this.id,this.description,this.mustChoose,this.radioOrChechbox,this.selectionCountLimit,this.selections);

  Selections(this.description,this.mustChoose,this.radioOrChechbox,this.selectionCountLimit,this.selections);

  where(Function(dynamic selection) param0) {}
}