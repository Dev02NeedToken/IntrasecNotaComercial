import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContaBancariaJuridicaRecord extends FirestoreRecord {
  ContaBancariaJuridicaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "banco" field.
  String? _banco;
  String get banco => _banco ?? '';
  bool hasBanco() => _banco != null;

  // "tipoDeConta" field.
  String? _tipoDeConta;
  String get tipoDeConta => _tipoDeConta ?? '';
  bool hasTipoDeConta() => _tipoDeConta != null;

  // "agencia" field.
  String? _agencia;
  String get agencia => _agencia ?? '';
  bool hasAgencia() => _agencia != null;

  // "conta" field.
  String? _conta;
  String get conta => _conta ?? '';
  bool hasConta() => _conta != null;

  // "digitoDaConta" field.
  String? _digitoDaConta;
  String get digitoDaConta => _digitoDaConta ?? '';
  bool hasDigitoDaConta() => _digitoDaConta != null;

  // "chavePIx" field.
  String? _chavePIx;
  String get chavePIx => _chavePIx ?? '';
  bool hasChavePIx() => _chavePIx != null;

  // "user_API" field.
  DocumentReference? _userAPI;
  DocumentReference? get userAPI => _userAPI;
  bool hasUserAPI() => _userAPI != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _banco = snapshotData['banco'] as String?;
    _tipoDeConta = snapshotData['tipoDeConta'] as String?;
    _agencia = snapshotData['agencia'] as String?;
    _conta = snapshotData['conta'] as String?;
    _digitoDaConta = snapshotData['digitoDaConta'] as String?;
    _chavePIx = snapshotData['chavePIx'] as String?;
    _userAPI = snapshotData['user_API'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contaBancariaJuridica');

  static Stream<ContaBancariaJuridicaRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ContaBancariaJuridicaRecord.fromSnapshot(s));

  static Future<ContaBancariaJuridicaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ContaBancariaJuridicaRecord.fromSnapshot(s));

  static ContaBancariaJuridicaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContaBancariaJuridicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContaBancariaJuridicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContaBancariaJuridicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContaBancariaJuridicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContaBancariaJuridicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContaBancariaJuridicaRecordData({
  DocumentReference? usuario,
  String? banco,
  String? tipoDeConta,
  String? agencia,
  String? conta,
  String? digitoDaConta,
  String? chavePIx,
  DocumentReference? userAPI,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'banco': banco,
      'tipoDeConta': tipoDeConta,
      'agencia': agencia,
      'conta': conta,
      'digitoDaConta': digitoDaConta,
      'chavePIx': chavePIx,
      'user_API': userAPI,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContaBancariaJuridicaRecordDocumentEquality
    implements Equality<ContaBancariaJuridicaRecord> {
  const ContaBancariaJuridicaRecordDocumentEquality();

  @override
  bool equals(
      ContaBancariaJuridicaRecord? e1, ContaBancariaJuridicaRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.banco == e2?.banco &&
        e1?.tipoDeConta == e2?.tipoDeConta &&
        e1?.agencia == e2?.agencia &&
        e1?.conta == e2?.conta &&
        e1?.digitoDaConta == e2?.digitoDaConta &&
        e1?.chavePIx == e2?.chavePIx &&
        e1?.userAPI == e2?.userAPI;
  }

  @override
  int hash(ContaBancariaJuridicaRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.banco,
        e?.tipoDeConta,
        e?.agencia,
        e?.conta,
        e?.digitoDaConta,
        e?.chavePIx,
        e?.userAPI
      ]);

  @override
  bool isValidKey(Object? o) => o is ContaBancariaJuridicaRecord;
}
