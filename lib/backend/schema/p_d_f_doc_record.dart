import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PDFDocRecord extends FirestoreRecord {
  PDFDocRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "doc" field.
  String? _doc;
  String get doc => _doc ?? '';
  bool hasDoc() => _doc != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  bool hasUuid() => _uuid != null;

  void _initializeFields() {
    _doc = snapshotData['doc'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _uuid = snapshotData['uuid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PDFDoc');

  static Stream<PDFDocRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PDFDocRecord.fromSnapshot(s));

  static Future<PDFDocRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PDFDocRecord.fromSnapshot(s));

  static PDFDocRecord fromSnapshot(DocumentSnapshot snapshot) => PDFDocRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PDFDocRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PDFDocRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PDFDocRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PDFDocRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPDFDocRecordData({
  String? doc,
  DocumentReference? usuario,
  String? uuid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doc': doc,
      'usuario': usuario,
      'uuid': uuid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PDFDocRecordDocumentEquality implements Equality<PDFDocRecord> {
  const PDFDocRecordDocumentEquality();

  @override
  bool equals(PDFDocRecord? e1, PDFDocRecord? e2) {
    return e1?.doc == e2?.doc &&
        e1?.usuario == e2?.usuario &&
        e1?.uuid == e2?.uuid;
  }

  @override
  int hash(PDFDocRecord? e) =>
      const ListEquality().hash([e?.doc, e?.usuario, e?.uuid]);

  @override
  bool isValidKey(Object? o) => o is PDFDocRecord;
}
