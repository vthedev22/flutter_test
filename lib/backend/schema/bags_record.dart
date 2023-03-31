import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bags_record.g.dart';

abstract class BagsRecord implements Built<BagsRecord, BagsRecordBuilder> {
  static Serializer<BagsRecord> get serializer => _$bagsRecordSerializer;

  String? get bagName;

  BuiltList<String>? get assets;

  int? get indicator;

  BuiltList<DateTime>? get timeline;

  bool? get isAutoTrade;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(BagsRecordBuilder builder) => builder
    ..bagName = ''
    ..assets = ListBuilder()
    ..indicator = 0
    ..timeline = ListBuilder()
    ..isAutoTrade = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bags')
          : FirebaseFirestore.instance.collectionGroup('bags');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('bags').doc();

  static Stream<BagsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BagsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BagsRecord._();
  factory BagsRecord([void Function(BagsRecordBuilder) updates]) = _$BagsRecord;

  static BagsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBagsRecordData({
  String? bagName,
  int? indicator,
  bool? isAutoTrade,
}) {
  final firestoreData = serializers.toFirestore(
    BagsRecord.serializer,
    BagsRecord(
      (b) => b
        ..bagName = bagName
        ..assets = null
        ..indicator = indicator
        ..timeline = null
        ..isAutoTrade = isAutoTrade,
    ),
  );

  return firestoreData;
}
