import 'package:built_value/built_value.dart';

part 'state_two.g.dart';

abstract class StateTwo implements Built<StateTwo, StateTwoBuilder> {
  String? get fieldOne;

  String? get fieldTwo;

  @BuiltValueField(wireName: 'field_three')
  int? get fieldThree;

  // bool? get fieldFour;

  StateTwo._();

  factory StateTwo([void Function(StateTwoBuilder) updates]) = _$StateTwo;
}
