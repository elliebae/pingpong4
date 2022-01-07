import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pingpong_record.g.dart';

abstract class PingpongRecord
    implements Built<PingpongRecord, PingpongRecordBuilder> {
  static Serializer<PingpongRecord> get serializer =>
      _$pingpongRecordSerializer;

  @nullable
  bool get ping;

  @nullable
  DocumentReference get sender;

  @nullable
  DocumentReference get receiver;

  @nullable
  String get message;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'sender_name')
  String get senderName;

  @nullable
  @BuiltValueField(wireName: 'receiver_number')
  String get receiverNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PingpongRecordBuilder builder) => builder
    ..ping = false
    ..message = ''
    ..senderName = ''
    ..receiverNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pingpong');

  static Stream<PingpongRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PingpongRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PingpongRecord._();
  factory PingpongRecord([void Function(PingpongRecordBuilder) updates]) =
      _$PingpongRecord;

  static PingpongRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPingpongRecordData({
  bool ping,
  DocumentReference sender,
  DocumentReference receiver,
  String message,
  DateTime createdAt,
  String senderName,
  String receiverNumber,
}) =>
    serializers.toFirestore(
        PingpongRecord.serializer,
        PingpongRecord((p) => p
          ..ping = ping
          ..sender = sender
          ..receiver = receiver
          ..message = message
          ..createdAt = createdAt
          ..senderName = senderName
          ..receiverNumber = receiverNumber));
