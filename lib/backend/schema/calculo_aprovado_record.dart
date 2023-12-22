import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalculoAprovadoRecord extends FirestoreRecord {
  CalculoAprovadoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dataEmisao" field.
  DateTime? _dataEmisao;
  DateTime? get dataEmisao => _dataEmisao;
  bool hasDataEmisao() => _dataEmisao != null;

  // "dataVencimento" field.
  DateTime? _dataVencimento;
  DateTime? get dataVencimento => _dataVencimento;
  bool hasDataVencimento() => _dataVencimento != null;

  // "prazo" field.
  String? _prazo;
  String get prazo => _prazo ?? '';
  bool hasPrazo() => _prazo != null;

  // "iof" field.
  double? _iof;
  double get iof => _iof ?? 0.0;
  bool hasIof() => _iof != null;

  // "valorContrato" field.
  double? _valorContrato;
  double get valorContrato => _valorContrato ?? 0.0;
  bool hasValorContrato() => _valorContrato != null;

  // "valoresLiquido" field.
  double? _valoresLiquido;
  double get valoresLiquido => _valoresLiquido ?? 0.0;
  bool hasValoresLiquido() => _valoresLiquido != null;

  // "custoEmissao" field.
  double? _custoEmissao;
  double get custoEmissao => _custoEmissao ?? 0.0;
  bool hasCustoEmissao() => _custoEmissao != null;

  // "indexador" field.
  String? _indexador;
  String get indexador => _indexador ?? '';
  bool hasIndexador() => _indexador != null;

  // "taxaAM" field.
  double? _taxaAM;
  double get taxaAM => _taxaAM ?? 0.0;
  bool hasTaxaAM() => _taxaAM != null;

  // "taxaAA" field.
  double? _taxaAA;
  double get taxaAA => _taxaAA ?? 0.0;
  bool hasTaxaAA() => _taxaAA != null;

  // "cetAM" field.
  double? _cetAM;
  double get cetAM => _cetAM ?? 0.0;
  bool hasCetAM() => _cetAM != null;

  // "cetAA" field.
  double? _cetAA;
  double get cetAA => _cetAA ?? 0.0;
  bool hasCetAA() => _cetAA != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "user_API" field.
  DocumentReference? _userAPI;
  DocumentReference? get userAPI => _userAPI;
  bool hasUserAPI() => _userAPI != null;

  void _initializeFields() {
    _dataEmisao = snapshotData['dataEmisao'] as DateTime?;
    _dataVencimento = snapshotData['dataVencimento'] as DateTime?;
    _prazo = snapshotData['prazo'] as String?;
    _iof = castToType<double>(snapshotData['iof']);
    _valorContrato = castToType<double>(snapshotData['valorContrato']);
    _valoresLiquido = castToType<double>(snapshotData['valoresLiquido']);
    _custoEmissao = castToType<double>(snapshotData['custoEmissao']);
    _indexador = snapshotData['indexador'] as String?;
    _taxaAM = castToType<double>(snapshotData['taxaAM']);
    _taxaAA = castToType<double>(snapshotData['taxaAA']);
    _cetAM = castToType<double>(snapshotData['cetAM']);
    _cetAA = castToType<double>(snapshotData['cetAA']);
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _userAPI = snapshotData['user_API'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calculoAprovado');

  static Stream<CalculoAprovadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalculoAprovadoRecord.fromSnapshot(s));

  static Future<CalculoAprovadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalculoAprovadoRecord.fromSnapshot(s));

  static CalculoAprovadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalculoAprovadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalculoAprovadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalculoAprovadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalculoAprovadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalculoAprovadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalculoAprovadoRecordData({
  DateTime? dataEmisao,
  DateTime? dataVencimento,
  String? prazo,
  double? iof,
  double? valorContrato,
  double? valoresLiquido,
  double? custoEmissao,
  String? indexador,
  double? taxaAM,
  double? taxaAA,
  double? cetAM,
  double? cetAA,
  DocumentReference? usuario,
  DocumentReference? userAPI,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dataEmisao': dataEmisao,
      'dataVencimento': dataVencimento,
      'prazo': prazo,
      'iof': iof,
      'valorContrato': valorContrato,
      'valoresLiquido': valoresLiquido,
      'custoEmissao': custoEmissao,
      'indexador': indexador,
      'taxaAM': taxaAM,
      'taxaAA': taxaAA,
      'cetAM': cetAM,
      'cetAA': cetAA,
      'usuario': usuario,
      'user_API': userAPI,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalculoAprovadoRecordDocumentEquality
    implements Equality<CalculoAprovadoRecord> {
  const CalculoAprovadoRecordDocumentEquality();

  @override
  bool equals(CalculoAprovadoRecord? e1, CalculoAprovadoRecord? e2) {
    return e1?.dataEmisao == e2?.dataEmisao &&
        e1?.dataVencimento == e2?.dataVencimento &&
        e1?.prazo == e2?.prazo &&
        e1?.iof == e2?.iof &&
        e1?.valorContrato == e2?.valorContrato &&
        e1?.valoresLiquido == e2?.valoresLiquido &&
        e1?.custoEmissao == e2?.custoEmissao &&
        e1?.indexador == e2?.indexador &&
        e1?.taxaAM == e2?.taxaAM &&
        e1?.taxaAA == e2?.taxaAA &&
        e1?.cetAM == e2?.cetAM &&
        e1?.cetAA == e2?.cetAA &&
        e1?.usuario == e2?.usuario &&
        e1?.userAPI == e2?.userAPI;
  }

  @override
  int hash(CalculoAprovadoRecord? e) => const ListEquality().hash([
        e?.dataEmisao,
        e?.dataVencimento,
        e?.prazo,
        e?.iof,
        e?.valorContrato,
        e?.valoresLiquido,
        e?.custoEmissao,
        e?.indexador,
        e?.taxaAM,
        e?.taxaAA,
        e?.cetAM,
        e?.cetAA,
        e?.usuario,
        e?.userAPI
      ]);

  @override
  bool isValidKey(Object? o) => o is CalculoAprovadoRecord;
}
