import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddInformacoescadastroPJRecord extends FirestoreRecord {
  AddInformacoescadastroPJRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "userCadastro" field.
  DocumentReference? _userCadastro;
  DocumentReference? get userCadastro => _userCadastro;
  bool hasUserCadastro() => _userCadastro != null;

  // "RamodeAtividade" field.
  String? _ramodeAtividade;
  String get ramodeAtividade => _ramodeAtividade ?? '';
  bool hasRamodeAtividade() => _ramodeAtividade != null;

  // "inscricaoMunicipal" field.
  String? _inscricaoMunicipal;
  String get inscricaoMunicipal => _inscricaoMunicipal ?? '';
  bool hasInscricaoMunicipal() => _inscricaoMunicipal != null;

  // "inscricaoEstadual" field.
  String? _inscricaoEstadual;
  String get inscricaoEstadual => _inscricaoEstadual ?? '';
  bool hasInscricaoEstadual() => _inscricaoEstadual != null;

  // "contaB3" field.
  String? _contaB3;
  String get contaB3 => _contaB3 ?? '';
  bool hasContaB3() => _contaB3 != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "CNAE" field.
  String? _cnae;
  String get cnae => _cnae ?? '';
  bool hasCnae() => _cnae != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _userCadastro = snapshotData['userCadastro'] as DocumentReference?;
    _ramodeAtividade = snapshotData['RamodeAtividade'] as String?;
    _inscricaoMunicipal = snapshotData['inscricaoMunicipal'] as String?;
    _inscricaoEstadual = snapshotData['inscricaoEstadual'] as String?;
    _contaB3 = snapshotData['contaB3'] as String?;
    _website = snapshotData['website'] as String?;
    _cnae = snapshotData['CNAE'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addInformacoescadastroPJ');

  static Stream<AddInformacoescadastroPJRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => AddInformacoescadastroPJRecord.fromSnapshot(s));

  static Future<AddInformacoescadastroPJRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AddInformacoescadastroPJRecord.fromSnapshot(s));

  static AddInformacoescadastroPJRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      AddInformacoescadastroPJRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddInformacoescadastroPJRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddInformacoescadastroPJRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddInformacoescadastroPJRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddInformacoescadastroPJRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddInformacoescadastroPJRecordData({
  DocumentReference? usuario,
  DocumentReference? userCadastro,
  String? ramodeAtividade,
  String? inscricaoMunicipal,
  String? inscricaoEstadual,
  String? contaB3,
  String? website,
  String? cnae,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'userCadastro': userCadastro,
      'RamodeAtividade': ramodeAtividade,
      'inscricaoMunicipal': inscricaoMunicipal,
      'inscricaoEstadual': inscricaoEstadual,
      'contaB3': contaB3,
      'website': website,
      'CNAE': cnae,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddInformacoescadastroPJRecordDocumentEquality
    implements Equality<AddInformacoescadastroPJRecord> {
  const AddInformacoescadastroPJRecordDocumentEquality();

  @override
  bool equals(
      AddInformacoescadastroPJRecord? e1, AddInformacoescadastroPJRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.userCadastro == e2?.userCadastro &&
        e1?.ramodeAtividade == e2?.ramodeAtividade &&
        e1?.inscricaoMunicipal == e2?.inscricaoMunicipal &&
        e1?.inscricaoEstadual == e2?.inscricaoEstadual &&
        e1?.contaB3 == e2?.contaB3 &&
        e1?.website == e2?.website &&
        e1?.cnae == e2?.cnae;
  }

  @override
  int hash(AddInformacoescadastroPJRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.userCadastro,
        e?.ramodeAtividade,
        e?.inscricaoMunicipal,
        e?.inscricaoEstadual,
        e?.contaB3,
        e?.website,
        e?.cnae
      ]);

  @override
  bool isValidKey(Object? o) => o is AddInformacoescadastroPJRecord;
}
