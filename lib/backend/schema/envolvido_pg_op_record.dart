import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnvolvidoPgOpRecord extends FirestoreRecord {
  EnvolvidoPgOpRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "envolvido" field.
  String? _envolvido;
  String get envolvido => _envolvido ?? '';
  bool hasEnvolvido() => _envolvido != null;

  // "relacionada" field.
  String? _relacionada;
  String get relacionada => _relacionada ?? '';
  bool hasRelacionada() => _relacionada != null;

  // "tipoDeRelacao" field.
  String? _tipoDeRelacao;
  String get tipoDeRelacao => _tipoDeRelacao ?? '';
  bool hasTipoDeRelacao() => _tipoDeRelacao != null;

  // "formaDeEnvio" field.
  String? _formaDeEnvio;
  String get formaDeEnvio => _formaDeEnvio ?? '';
  bool hasFormaDeEnvio() => _formaDeEnvio != null;

  // "formaDeValidacao" field.
  String? _formaDeValidacao;
  String get formaDeValidacao => _formaDeValidacao ?? '';
  bool hasFormaDeValidacao() => _formaDeValidacao != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _envolvido = snapshotData['envolvido'] as String?;
    _relacionada = snapshotData['relacionada'] as String?;
    _tipoDeRelacao = snapshotData['tipoDeRelacao'] as String?;
    _formaDeEnvio = snapshotData['formaDeEnvio'] as String?;
    _formaDeValidacao = snapshotData['formaDeValidacao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('envolvidoPgOp');

  static Stream<EnvolvidoPgOpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnvolvidoPgOpRecord.fromSnapshot(s));

  static Future<EnvolvidoPgOpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnvolvidoPgOpRecord.fromSnapshot(s));

  static EnvolvidoPgOpRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnvolvidoPgOpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnvolvidoPgOpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnvolvidoPgOpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnvolvidoPgOpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnvolvidoPgOpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnvolvidoPgOpRecordData({
  DocumentReference? usuario,
  String? envolvido,
  String? relacionada,
  String? tipoDeRelacao,
  String? formaDeEnvio,
  String? formaDeValidacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'envolvido': envolvido,
      'relacionada': relacionada,
      'tipoDeRelacao': tipoDeRelacao,
      'formaDeEnvio': formaDeEnvio,
      'formaDeValidacao': formaDeValidacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnvolvidoPgOpRecordDocumentEquality
    implements Equality<EnvolvidoPgOpRecord> {
  const EnvolvidoPgOpRecordDocumentEquality();

  @override
  bool equals(EnvolvidoPgOpRecord? e1, EnvolvidoPgOpRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.envolvido == e2?.envolvido &&
        e1?.relacionada == e2?.relacionada &&
        e1?.tipoDeRelacao == e2?.tipoDeRelacao &&
        e1?.formaDeEnvio == e2?.formaDeEnvio &&
        e1?.formaDeValidacao == e2?.formaDeValidacao;
  }

  @override
  int hash(EnvolvidoPgOpRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.envolvido,
        e?.relacionada,
        e?.tipoDeRelacao,
        e?.formaDeEnvio,
        e?.formaDeValidacao
      ]);

  @override
  bool isValidKey(Object? o) => o is EnvolvidoPgOpRecord;
}
