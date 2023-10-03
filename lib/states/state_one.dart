import 'package:built_value/built_value.dart';

part 'state_one.g.dart';

abstract class StateOne implements Built<StateOne, StateOneBuilder> {
  String? get fieldOne;

  String? get fieldTwo;

  @BuiltValueField(wireName: 'field_three')
  int? get fieldThree;

  // bool? get fieldFour;

  StateOne._();

  factory StateOne([void Function(StateOneBuilder) updates]) = _$StateOne;
}
