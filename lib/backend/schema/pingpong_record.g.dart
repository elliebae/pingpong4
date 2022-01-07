// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pingpong_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PingpongRecord> _$pingpongRecordSerializer =
    new _$PingpongRecordSerializer();

class _$PingpongRecordSerializer
    implements StructuredSerializer<PingpongRecord> {
  @override
  final Iterable<Type> types = const [PingpongRecord, _$PingpongRecord];
  @override
  final String wireName = 'PingpongRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PingpongRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.ping;
    if (value != null) {
      result
        ..add('ping')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.sender;
    if (value != null) {
      result
        ..add('sender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.receiver;
    if (value != null) {
      result
        ..add('receiver')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.senderName;
    if (value != null) {
      result
        ..add('sender_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.receiverNumber;
    if (value != null) {
      result
        ..add('receiver_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  PingpongRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PingpongRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'ping':
          result.ping = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'sender':
          result.sender = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'receiver':
          result.receiver = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sender_name':
          result.senderName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiver_number':
          result.receiverNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$PingpongRecord extends PingpongRecord {
  @override
  final bool ping;
  @override
  final DocumentReference<Object> sender;
  @override
  final DocumentReference<Object> receiver;
  @override
  final String message;
  @override
  final DateTime createdAt;
  @override
  final String senderName;
  @override
  final String receiverNumber;
  @override
  final DocumentReference<Object> reference;

  factory _$PingpongRecord([void Function(PingpongRecordBuilder) updates]) =>
      (new PingpongRecordBuilder()..update(updates)).build();

  _$PingpongRecord._(
      {this.ping,
      this.sender,
      this.receiver,
      this.message,
      this.createdAt,
      this.senderName,
      this.receiverNumber,
      this.reference})
      : super._();

  @override
  PingpongRecord rebuild(void Function(PingpongRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PingpongRecordBuilder toBuilder() =>
      new PingpongRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PingpongRecord &&
        ping == other.ping &&
        sender == other.sender &&
        receiver == other.receiver &&
        message == other.message &&
        createdAt == other.createdAt &&
        senderName == other.senderName &&
        receiverNumber == other.receiverNumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, ping.hashCode), sender.hashCode),
                            receiver.hashCode),
                        message.hashCode),
                    createdAt.hashCode),
                senderName.hashCode),
            receiverNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PingpongRecord')
          ..add('ping', ping)
          ..add('sender', sender)
          ..add('receiver', receiver)
          ..add('message', message)
          ..add('createdAt', createdAt)
          ..add('senderName', senderName)
          ..add('receiverNumber', receiverNumber)
          ..add('reference', reference))
        .toString();
  }
}

class PingpongRecordBuilder
    implements Builder<PingpongRecord, PingpongRecordBuilder> {
  _$PingpongRecord _$v;

  bool _ping;
  bool get ping => _$this._ping;
  set ping(bool ping) => _$this._ping = ping;

  DocumentReference<Object> _sender;
  DocumentReference<Object> get sender => _$this._sender;
  set sender(DocumentReference<Object> sender) => _$this._sender = sender;

  DocumentReference<Object> _receiver;
  DocumentReference<Object> get receiver => _$this._receiver;
  set receiver(DocumentReference<Object> receiver) =>
      _$this._receiver = receiver;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _senderName;
  String get senderName => _$this._senderName;
  set senderName(String senderName) => _$this._senderName = senderName;

  String _receiverNumber;
  String get receiverNumber => _$this._receiverNumber;
  set receiverNumber(String receiverNumber) =>
      _$this._receiverNumber = receiverNumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PingpongRecordBuilder() {
    PingpongRecord._initializeBuilder(this);
  }

  PingpongRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ping = $v.ping;
      _sender = $v.sender;
      _receiver = $v.receiver;
      _message = $v.message;
      _createdAt = $v.createdAt;
      _senderName = $v.senderName;
      _receiverNumber = $v.receiverNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PingpongRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PingpongRecord;
  }

  @override
  void update(void Function(PingpongRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PingpongRecord build() {
    final _$result = _$v ??
        new _$PingpongRecord._(
            ping: ping,
            sender: sender,
            receiver: receiver,
            message: message,
            createdAt: createdAt,
            senderName: senderName,
            receiverNumber: receiverNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
