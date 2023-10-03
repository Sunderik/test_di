// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_two.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StateTwo extends StateTwo {
  @override
  final String? fieldOne;
  @override
  final String? fieldTwo;
  @override
  final int? fieldThree;

  factory _$StateTwo([void Function(StateTwoBuilder)? updates]) =>
      (new StateTwoBuilder()..update(updates))._build();

  _$StateTwo._({this.fieldOne, this.fieldTwo, this.fieldThree}) : super._();

  @override
  StateTwo rebuild(void Function(StateTwoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StateTwoBuilder toBuilder() => new StateTwoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StateTwo &&
        fieldOne == other.fieldOne &&
        fieldTwo == other.fieldTwo &&
        fieldThree == other.fieldThree;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fieldOne.hashCode);
    _$hash = $jc(_$hash, fieldTwo.hashCode);
    _$hash = $jc(_$hash, fieldThree.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StateTwo')
          ..add('fieldOne', fieldOne)
          ..add('fieldTwo', fieldTwo)
          ..add('fieldThree', fieldThree))
        .toString();
  }
}

class StateTwoBuilder implements Builder<StateTwo, StateTwoBuilder> {
  _$StateTwo? _$v;

  String? _fieldOne;
  String? get fieldOne => _$this._fieldOne;
  set fieldOne(String? fieldOne) => _$this._fieldOne = fieldOne;

  String? _fieldTwo;
  String? get fieldTwo => _$this._fieldTwo;
  set fieldTwo(String? fieldTwo) => _$this._fieldTwo = fieldTwo;

  int? _fieldThree;
  int? get fieldThree => _$this._fieldThree;
  set fieldThree(int? fieldThree) => _$this._fieldThree = fieldThree;

  StateTwoBuilder();

  StateTwoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fieldOne = $v.fieldOne;
      _fieldTwo = $v.fieldTwo;
      _fieldThree = $v.fieldThree;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StateTwo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StateTwo;
  }

  @override
  void update(void Function(StateTwoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StateTwo build() => _build();

  _$StateTwo _build() {
    final _$result = _$v ??
        new _$StateTwo._(
            fieldOne: fieldOne, fieldTwo: fieldTwo, fieldThree: fieldThree);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
