import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocFisicoRecord extends FirestoreRecord {
  DocFisicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "docNome" field.
  String? _docNome;
  String get docNome => _docNome ?? '';
  bool hasDocNome() => _docNome != null;

  // "docTipo" field.
  String? _docTipo;
  String get docTipo => _docTipo ?? '';
  bool hasDocTipo() => _docTipo != null;

  // "docData" field.
  DateTime? _docData;
  DateTime? get docData => _docData;
  bool hasDocData() => _docData != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "user_API" field.
  DocumentReference? _userAPI;
  DocumentReference? get userAPI => _userAPI;
  bool hasUserAPI() => _userAPI != null;

  void _initializeFields() {
    _docNome = snapshotData['docNome'] as String?;
    _docTipo = snapshotData['docTipo'] as String?;
    _docData = snapshotData['docData'] as DateTime?;
    _url = snapshotData['url'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _userAPI = snapshotData['user_API'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('docFisico');

  static Stream<DocFisicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocFisicoRecord.fromSnapshot(s));

  static Future<DocFisicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocFisicoRecord.fromSnapshot(s));

  static DocFisicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocFisicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocFisicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocFisicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocFisicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocFisicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocFisicoRecordData({
  String? docNome,
  String? docTipo,
  DateTime? docData,
  String? url,
  DocumentReference? usuario,
  DocumentReference? userAPI,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'docNome': docNome,
      'docTipo': docTipo,
      'docData': docData,
      'url': url,
      'usuario': usuario,
      'user_API': userAPI,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocFisicoRecordDocumentEquality implements Equality<DocFisicoRecord> {
  const DocFisicoRecordDocumentEquality();

  @override
  bool equals(DocFisicoRecord? e1, DocFisicoRecord? e2) {
    return e1?.docNome == e2?.docNome &&
        e1?.docTipo == e2?.docTipo &&
        e1?.docData == e2?.docData &&
        e1?.url == e2?.url &&
        e1?.usuario == e2?.usuario &&
        e1?.userAPI == e2?.userAPI;
  }

  @override
  int hash(DocFisicoRecord? e) => const ListEquality().hash(
      [e?.docNome, e?.docTipo, e?.docData, e?.url, e?.usuario, e?.userAPI]);

  @override
  bool isValidKey(Object? o) => o is DocFisicoRecord;
}
