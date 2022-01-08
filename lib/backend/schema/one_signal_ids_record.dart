import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'one_signal_ids_record.g.dart';

abstract class OneSignalIdsRecord
    implements Built<OneSignalIdsRecord, OneSignalIdsRecordBuilder> {
  static Serializer<OneSignalIdsRecord> get serializer =>
      _$oneSignalIdsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'customer_id')
  String get customerId;

  @nullable
  @BuiltValueField(wireName: 'player_ids')
  BuiltList<String> get playerIds;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OneSignalIdsRecordBuilder builder) => builder
    ..customerId = ''
    ..playerIds = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('OneSignalIds');

  static Stream<OneSignalIdsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OneSignalIdsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  OneSignalIdsRecord._();
  factory OneSignalIdsRecord(
          [void Function(OneSignalIdsRecordBuilder) updates]) =
      _$OneSignalIdsRecord;

  static OneSignalIdsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOneSignalIdsRecordData({
  String customerId,
}) =>
    serializers.toFirestore(
        OneSignalIdsRecord.serializer,
        OneSignalIdsRecord((o) => o
          ..customerId = customerId
          ..playerIds = null));
