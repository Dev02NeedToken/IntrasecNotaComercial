import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OperadoresRecord extends FirestoreRecord {
  OperadoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "corban" field.
  String? _corban;
  String get corban => _corban ?? '';
  bool hasCorban() => _corban != null;

  // "operador" field.
  String? _operador;
  String get operador => _operador ?? '';
  bool hasOperador() => _operador != null;

  // "nivel" field.
  String? _nivel;
  String get nivel => _nivel ?? '';
  bool hasNivel() => _nivel != null;

  // "cpfCnpj" field.
  String? _cpfCnpj;
  String get cpfCnpj => _cpfCnpj ?? '';
  bool hasCpfCnpj() => _cpfCnpj != null;

  // "usuarioSolicitante" field.
  String? _usuarioSolicitante;
  String get usuarioSolicitante => _usuarioSolicitante ?? '';
  bool hasUsuarioSolicitante() => _usuarioSolicitante != null;

  // "numeroDaConta" field.
  int? _numeroDaConta;
  int get numeroDaConta => _numeroDaConta ?? 0;
  bool hasNumeroDaConta() => _numeroDaConta != null;

  // "titular" field.
  String? _titular;
  String get titular => _titular ?? '';
  bool hasTitular() => _titular != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "user_API" field.
  DocumentReference? _userAPI;
  DocumentReference? get userAPI => _userAPI;
  bool hasUserAPI() => _userAPI != null;

  void _initializeFields() {
    _corban = snapshotData['corban'] as String?;
    _operador = snapshotData['operador'] as String?;
    _nivel = snapshotData['nivel'] as String?;
    _cpfCnpj = snapshotData['cpfCnpj'] as String?;
    _usuarioSolicitante = snapshotData['usuarioSolicitante'] as String?;
    _numeroDaConta = castToType<int>(snapshotData['numeroDaConta']);
    _titular = snapshotData['titular'] as String?;
    _status = snapshotData['status'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _userAPI = snapshotData['user_API'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('operadores');

  static Stream<OperadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OperadoresRecord.fromSnapshot(s));

  static Future<OperadoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OperadoresRecord.fromSnapshot(s));

  static OperadoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OperadoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OperadoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OperadoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OperadoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OperadoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOperadoresRecordData({
  String? corban,
  String? operador,
  String? nivel,
  String? cpfCnpj,
  String? usuarioSolicitante,
  int? numeroDaConta,
  String? titular,
  String? status,
  DocumentReference? usuario,
  DocumentReference? userAPI,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'corban': corban,
      'operador': operador,
      'nivel': nivel,
      'cpfCnpj': cpfCnpj,
      'usuarioSolicitante': usuarioSolicitante,
      'numeroDaConta': numeroDaConta,
      'titular': titular,
      'status': status,
      'usuario': usuario,
      'user_API': userAPI,
    }.withoutNulls,
  );

  return firestoreData;
}

class OperadoresRecordDocumentEquality implements Equality<OperadoresRecord> {
  const OperadoresRecordDocumentEquality();

  @override
  bool equals(OperadoresRecord? e1, OperadoresRecord? e2) {
    return e1?.corban == e2?.corban &&
        e1?.operador == e2?.operador &&
        e1?.nivel == e2?.nivel &&
        e1?.cpfCnpj == e2?.cpfCnpj &&
        e1?.usuarioSolicitante == e2?.usuarioSolicitante &&
        e1?.numeroDaConta == e2?.numeroDaConta &&
        e1?.titular == e2?.titular &&
        e1?.status == e2?.status &&
        e1?.usuario == e2?.usuario &&
        e1?.userAPI == e2?.userAPI;
  }

  @override
  int hash(OperadoresRecord? e) => const ListEquality().hash([
        e?.corban,
        e?.operador,
        e?.nivel,
        e?.cpfCnpj,
        e?.usuarioSolicitante,
        e?.numeroDaConta,
        e?.titular,
        e?.status,
        e?.usuario,
        e?.userAPI
      ]);

  @override
  bool isValidKey(Object? o) => o is OperadoresRecord;
}
