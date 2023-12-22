import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RespDocAssinaturaRecord extends FirestoreRecord {
  RespDocAssinaturaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dataFile" field.
  String? _dataFile;
  String get dataFile => _dataFile ?? '';
  bool hasDataFile() => _dataFile != null;

  // "dataFileHashEncrypted" field.
  String? _dataFileHashEncrypted;
  String get dataFileHashEncrypted => _dataFileHashEncrypted ?? '';
  bool hasDataFileHashEncrypted() => _dataFileHashEncrypted != null;

  // "dataFileHash" field.
  String? _dataFileHash;
  String get dataFileHash => _dataFileHash ?? '';
  bool hasDataFileHash() => _dataFileHash != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _dataFile = snapshotData['dataFile'] as String?;
    _dataFileHashEncrypted = snapshotData['dataFileHashEncrypted'] as String?;
    _dataFileHash = snapshotData['dataFileHash'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _url = snapshotData['url'] as String?;
    _id = snapshotData['id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('respDocAssinatura');

  static Stream<RespDocAssinaturaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RespDocAssinaturaRecord.fromSnapshot(s));

  static Future<RespDocAssinaturaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RespDocAssinaturaRecord.fromSnapshot(s));

  static RespDocAssinaturaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RespDocAssinaturaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RespDocAssinaturaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RespDocAssinaturaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RespDocAssinaturaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RespDocAssinaturaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRespDocAssinaturaRecordData({
  String? dataFile,
  String? dataFileHashEncrypted,
  String? dataFileHash,
  DocumentReference? usuario,
  String? url,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dataFile': dataFile,
      'dataFileHashEncrypted': dataFileHashEncrypted,
      'dataFileHash': dataFileHash,
      'usuario': usuario,
      'url': url,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class RespDocAssinaturaRecordDocumentEquality
    implements Equality<RespDocAssinaturaRecord> {
  const RespDocAssinaturaRecordDocumentEquality();

  @override
  bool equals(RespDocAssinaturaRecord? e1, RespDocAssinaturaRecord? e2) {
    return e1?.dataFile == e2?.dataFile &&
        e1?.dataFileHashEncrypted == e2?.dataFileHashEncrypted &&
        e1?.dataFileHash == e2?.dataFileHash &&
        e1?.usuario == e2?.usuario &&
        e1?.url == e2?.url &&
        e1?.id == e2?.id;
  }

  @override
  int hash(RespDocAssinaturaRecord? e) => const ListEquality().hash([
        e?.dataFile,
        e?.dataFileHashEncrypted,
        e?.dataFileHash,
        e?.usuario,
        e?.url,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is RespDocAssinaturaRecord;
}
