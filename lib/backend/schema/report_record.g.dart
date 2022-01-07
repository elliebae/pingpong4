// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReportRecord> _$reportRecordSerializer =
    new _$ReportRecordSerializer();

class _$ReportRecordSerializer implements StructuredSerializer<ReportRecord> {
  @override
  final Iterable<Type> types = const [ReportRecord, _$ReportRecord];
  @override
  final String wireName = 'ReportRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ReportRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.reportUser;
    if (value != null) {
      result
        ..add('report_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reportedUser;
    if (value != null) {
      result
        ..add('reported_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reportedPingpong;
    if (value != null) {
      result
        ..add('reported_pingpong')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  ReportRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'report_user':
          result.reportUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'reported_user':
          result.reportedUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'reported_pingpong':
          result.reportedPingpong = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$ReportRecord extends ReportRecord {
  @override
  final DocumentReference<Object> reportUser;
  @override
  final DocumentReference<Object> reportedUser;
  @override
  final DateTime createdTime;
  @override
  final DocumentReference<Object> reportedPingpong;
  @override
  final DocumentReference<Object> reference;

  factory _$ReportRecord([void Function(ReportRecordBuilder) updates]) =>
      (new ReportRecordBuilder()..update(updates)).build();

  _$ReportRecord._(
      {this.reportUser,
      this.reportedUser,
      this.createdTime,
      this.reportedPingpong,
      this.reference})
      : super._();

  @override
  ReportRecord rebuild(void Function(ReportRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportRecordBuilder toBuilder() => new ReportRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportRecord &&
        reportUser == other.reportUser &&
        reportedUser == other.reportedUser &&
        createdTime == other.createdTime &&
        reportedPingpong == other.reportedPingpong &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, reportUser.hashCode), reportedUser.hashCode),
                createdTime.hashCode),
            reportedPingpong.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReportRecord')
          ..add('reportUser', reportUser)
          ..add('reportedUser', reportedUser)
          ..add('createdTime', createdTime)
          ..add('reportedPingpong', reportedPingpong)
          ..add('reference', reference))
        .toString();
  }
}

class ReportRecordBuilder
    implements Builder<ReportRecord, ReportRecordBuilder> {
  _$ReportRecord _$v;

  DocumentReference<Object> _reportUser;
  DocumentReference<Object> get reportUser => _$this._reportUser;
  set reportUser(DocumentReference<Object> reportUser) =>
      _$this._reportUser = reportUser;

  DocumentReference<Object> _reportedUser;
  DocumentReference<Object> get reportedUser => _$this._reportedUser;
  set reportedUser(DocumentReference<Object> reportedUser) =>
      _$this._reportedUser = reportedUser;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object> _reportedPingpong;
  DocumentReference<Object> get reportedPingpong => _$this._reportedPingpong;
  set reportedPingpong(DocumentReference<Object> reportedPingpong) =>
      _$this._reportedPingpong = reportedPingpong;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ReportRecordBuilder() {
    ReportRecord._initializeBuilder(this);
  }

  ReportRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportUser = $v.reportUser;
      _reportedUser = $v.reportedUser;
      _createdTime = $v.createdTime;
      _reportedPingpong = $v.reportedPingpong;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportRecord;
  }

  @override
  void update(void Function(ReportRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReportRecord build() {
    final _$result = _$v ??
        new _$ReportRecord._(
            reportUser: reportUser,
            reportedUser: reportedUser,
            createdTime: createdTime,
            reportedPingpong: reportedPingpong,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
