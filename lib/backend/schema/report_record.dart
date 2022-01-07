import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'report_record.g.dart';

abstract class ReportRecord
    implements Built<ReportRecord, ReportRecordBuilder> {
  static Serializer<ReportRecord> get serializer => _$reportRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'report_user')
  DocumentReference get reportUser;

  @nullable
  @BuiltValueField(wireName: 'reported_user')
  DocumentReference get reportedUser;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'reported_pingpong')
  DocumentReference get reportedPingpong;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReportRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Report');

  static Stream<ReportRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReportRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReportRecord._();
  factory ReportRecord([void Function(ReportRecordBuilder) updates]) =
      _$ReportRecord;

  static ReportRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReportRecordData({
  DocumentReference reportUser,
  DocumentReference reportedUser,
  DateTime createdTime,
  DocumentReference reportedPingpong,
}) =>
    serializers.toFirestore(
        ReportRecord.serializer,
        ReportRecord((r) => r
          ..reportUser = reportUser
          ..reportedUser = reportedUser
          ..createdTime = createdTime
          ..reportedPingpong = reportedPingpong));
