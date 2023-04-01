// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bags_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BagsRecord> _$bagsRecordSerializer = new _$BagsRecordSerializer();

class _$BagsRecordSerializer implements StructuredSerializer<BagsRecord> {
  @override
  final Iterable<Type> types = const [BagsRecord, _$BagsRecord];
  @override
  final String wireName = 'BagsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BagsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bagName;
    if (value != null) {
      result
        ..add('bagName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.indicator;
    if (value != null) {
      result
        ..add('indicator')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isAutoTrade;
    if (value != null) {
      result
        ..add('isAutoTrade')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BagsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BagsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bagName':
          result.bagName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'indicator':
          result.indicator = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isAutoTrade':
          result.isAutoTrade = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BagsRecord extends BagsRecord {
  @override
  final String? bagName;
  @override
  final int? indicator;
  @override
  final bool? isAutoTrade;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BagsRecord([void Function(BagsRecordBuilder)? updates]) =>
      (new BagsRecordBuilder()..update(updates))._build();

  _$BagsRecord._(
      {this.bagName,
      this.indicator,
      this.isAutoTrade,
      this.startTime,
      this.endTime,
      this.ffRef})
      : super._();

  @override
  BagsRecord rebuild(void Function(BagsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BagsRecordBuilder toBuilder() => new BagsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BagsRecord &&
        bagName == other.bagName &&
        indicator == other.indicator &&
        isAutoTrade == other.isAutoTrade &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bagName.hashCode);
    _$hash = $jc(_$hash, indicator.hashCode);
    _$hash = $jc(_$hash, isAutoTrade.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BagsRecord')
          ..add('bagName', bagName)
          ..add('indicator', indicator)
          ..add('isAutoTrade', isAutoTrade)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BagsRecordBuilder implements Builder<BagsRecord, BagsRecordBuilder> {
  _$BagsRecord? _$v;

  String? _bagName;
  String? get bagName => _$this._bagName;
  set bagName(String? bagName) => _$this._bagName = bagName;

  int? _indicator;
  int? get indicator => _$this._indicator;
  set indicator(int? indicator) => _$this._indicator = indicator;

  bool? _isAutoTrade;
  bool? get isAutoTrade => _$this._isAutoTrade;
  set isAutoTrade(bool? isAutoTrade) => _$this._isAutoTrade = isAutoTrade;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BagsRecordBuilder() {
    BagsRecord._initializeBuilder(this);
  }

  BagsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bagName = $v.bagName;
      _indicator = $v.indicator;
      _isAutoTrade = $v.isAutoTrade;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BagsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BagsRecord;
  }

  @override
  void update(void Function(BagsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BagsRecord build() => _build();

  _$BagsRecord _build() {
    final _$result = _$v ??
        new _$BagsRecord._(
            bagName: bagName,
            indicator: indicator,
            isAutoTrade: isAutoTrade,
            startTime: startTime,
            endTime: endTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
