// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_one.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StateOne extends StateOne {
  @override
  final String? fieldOne;
  @override
  final String? fieldTwo;
  @override
  final int? fieldThree;

  factory _$StateOne([void Function(StateOneBuilder)? updates]) =>
      (new StateOneBuilder()..update(updates))._build();

  _$StateOne._({this.fieldOne, this.fieldTwo, this.fieldThree}) : super._();

  @override
  StateOne rebuild(void Function(StateOneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StateOneBuilder toBuilder() => new StateOneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StateOne &&
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
    return (newBuiltValueToStringHelper(r'StateOne')
          ..add('fieldOne', fieldOne)
          ..add('fieldTwo', fieldTwo)
          ..add('fieldThree', fieldThree))
        .toString();
  }
}

class StateOneBuilder implements Builder<StateOne, StateOneBuilder> {
  _$StateOne? _$v;

  String? _fieldOne;
  String? get fieldOne => _$this._fieldOne;
  set fieldOne(String? fieldOne) => _$this._fieldOne = fieldOne;

  String? _fieldTwo;
  String? get fieldTwo => _$this._fieldTwo;
  set fieldTwo(String? fieldTwo) => _$this._fieldTwo = fieldTwo;

  int? _fieldThree;
  int? get fieldThree => _$this._fieldThree;
  set fieldThree(int? fieldThree) => _$this._fieldThree = fieldThree;

  StateOneBuilder();

  StateOneBuilder get _$this {
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
  void replace(StateOne other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StateOne;
  }

  @override
  void update(void Function(StateOneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StateOne build() => _build();

  _$StateOne _build() {
    final _$result = _$v ??
        new _$StateOne._(
            fieldOne: fieldOne, fieldTwo: fieldTwo, fieldThree: fieldThree);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
