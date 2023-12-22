import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IspbRecord extends FirestoreRecord {
  IspbRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ISPB" field.
  int? _ispb;
  int get ispb => _ispb ?? 0;
  bool hasIspb() => _ispb != null;

  // "nomeCompleto" field.
  String? _nomeCompleto;
  String get nomeCompleto => _nomeCompleto ?? '';
  bool hasNomeCompleto() => _nomeCompleto != null;

  // "Codigo" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  bool hasCodigo() => _codigo != null;

  // "user_API" field.
  DocumentReference? _userAPI;
  DocumentReference? get userAPI => _userAPI;
  bool hasUserAPI() => _userAPI != null;

  void _initializeFields() {
    _ispb = castToType<int>(snapshotData['ISPB']);
    _nomeCompleto = snapshotData['nomeCompleto'] as String?;
    _codigo = castToType<int>(snapshotData['Codigo']);
    _userAPI = snapshotData['user_API'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ispb');

  static Stream<IspbRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IspbRecord.fromSnapshot(s));

  static Future<IspbRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IspbRecord.fromSnapshot(s));

  static IspbRecord fromSnapshot(DocumentSnapshot snapshot) => IspbRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IspbRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IspbRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IspbRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IspbRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIspbRecordData({
  int? ispb,
  String? nomeCompleto,
  int? codigo,
  DocumentReference? userAPI,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ISPB': ispb,
      'nomeCompleto': nomeCompleto,
      'Codigo': codigo,
      'user_API': userAPI,
    }.withoutNulls,
  );

  return firestoreData;
}

class IspbRecordDocumentEquality implements Equality<IspbRecord> {
  const IspbRecordDocumentEquality();

  @override
  bool equals(IspbRecord? e1, IspbRecord? e2) {
    return e1?.ispb == e2?.ispb &&
        e1?.nomeCompleto == e2?.nomeCompleto &&
        e1?.codigo == e2?.codigo &&
        e1?.userAPI == e2?.userAPI;
  }

  @override
  int hash(IspbRecord? e) => const ListEquality()
      .hash([e?.ispb, e?.nomeCompleto, e?.codigo, e?.userAPI]);

  @override
  bool isValidKey(Object? o) => o is IspbRecord;
}
