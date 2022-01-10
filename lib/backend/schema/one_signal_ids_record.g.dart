// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_signal_ids_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OneSignalIdsRecord> _$oneSignalIdsRecordSerializer =
    new _$OneSignalIdsRecordSerializer();

class _$OneSignalIdsRecordSerializer
    implements StructuredSerializer<OneSignalIdsRecord> {
  @override
  final Iterable<Type> types = const [OneSignalIdsRecord, _$OneSignalIdsRecord];
  @override
  final String wireName = 'OneSignalIdsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OneSignalIdsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.customerId;
    if (value != null) {
      result
        ..add('customer_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.playerIds;
    if (value != null) {
      result
        ..add('player_ids')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  OneSignalIdsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OneSignalIdsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'customer_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'player_ids':
          result.playerIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$OneSignalIdsRecord extends OneSignalIdsRecord {
  @override
  final String customerId;
  @override
  final BuiltList<String> playerIds;
  @override
  final DocumentReference<Object> reference;

  factory _$OneSignalIdsRecord(
          [void Function(OneSignalIdsRecordBuilder) updates]) =>
      (new OneSignalIdsRecordBuilder()..update(updates)).build();

  _$OneSignalIdsRecord._({this.customerId, this.playerIds, this.reference})
      : super._();

  @override
  OneSignalIdsRecord rebuild(
          void Function(OneSignalIdsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OneSignalIdsRecordBuilder toBuilder() =>
      new OneSignalIdsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OneSignalIdsRecord &&
        customerId == other.customerId &&
        playerIds == other.playerIds &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, customerId.hashCode), playerIds.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OneSignalIdsRecord')
          ..add('customerId', customerId)
          ..add('playerIds', playerIds)
          ..add('reference', reference))
        .toString();
  }
}

class OneSignalIdsRecordBuilder
    implements Builder<OneSignalIdsRecord, OneSignalIdsRecordBuilder> {
  _$OneSignalIdsRecord _$v;

  String _customerId;
  String get customerId => _$this._customerId;
  set customerId(String customerId) => _$this._customerId = customerId;

  ListBuilder<String> _playerIds;
  ListBuilder<String> get playerIds =>
      _$this._playerIds ??= new ListBuilder<String>();
  set playerIds(ListBuilder<String> playerIds) => _$this._playerIds = playerIds;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OneSignalIdsRecordBuilder() {
    OneSignalIdsRecord._initializeBuilder(this);
  }

  OneSignalIdsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _playerIds = $v.playerIds?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OneSignalIdsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OneSignalIdsRecord;
  }

  @override
  void update(void Function(OneSignalIdsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OneSignalIdsRecord build() {
    _$OneSignalIdsRecord _$result;
    try {
      _$result = _$v ??
          new _$OneSignalIdsRecord._(
              customerId: customerId,
              playerIds: _playerIds?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'playerIds';
        _playerIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OneSignalIdsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
