import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NovaOperacaoRecord extends FirestoreRecord {
  NovaOperacaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "dataDaEmissao" field.
  String? _dataDaEmissao;
  String get dataDaEmissao => _dataDaEmissao ?? '';
  bool hasDataDaEmissao() => _dataDaEmissao != null;

  // "dataDoVencimento" field.
  String? _dataDoVencimento;
  String get dataDoVencimento => _dataDoVencimento ?? '';
  bool hasDataDoVencimento() => _dataDoVencimento != null;

  // "valorNominalUnitario" field.
  String? _valorNominalUnitario;
  String get valorNominalUnitario => _valorNominalUnitario ?? '';
  bool hasValorNominalUnitario() => _valorNominalUnitario != null;

  // "quantidade" field.
  String? _quantidade;
  String get quantidade => _quantidade ?? '';
  bool hasQuantidade() => _quantidade != null;

  // "convencao" field.
  String? _convencao;
  String get convencao => _convencao ?? '';
  bool hasConvencao() => _convencao != null;

  // "indexador" field.
  String? _indexador;
  String get indexador => _indexador ?? '';
  bool hasIndexador() => _indexador != null;

  // "percentualDoIndexador" field.
  double? _percentualDoIndexador;
  double get percentualDoIndexador => _percentualDoIndexador ?? 0.0;
  bool hasPercentualDoIndexador() => _percentualDoIndexador != null;

  // "percentualSobre" field.
  String? _percentualSobre;
  String get percentualSobre => _percentualSobre ?? '';
  bool hasPercentualSobre() => _percentualSobre != null;

  // "vencimentoDa1aParcela" field.
  String? _vencimentoDa1aParcela;
  String get vencimentoDa1aParcela => _vencimentoDa1aParcela ?? '';
  bool hasVencimentoDa1aParcela() => _vencimentoDa1aParcela != null;

  // "periodicidade" field.
  String? _periodicidade;
  String get periodicidade => _periodicidade ?? '';
  bool hasPeriodicidade() => _periodicidade != null;

  // "valorDosJurosRemunetorios" field.
  double? _valorDosJurosRemunetorios;
  double get valorDosJurosRemunetorios => _valorDosJurosRemunetorios ?? 0.0;
  bool hasValorDosJurosRemunetorios() => _valorDosJurosRemunetorios != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _dataDaEmissao = snapshotData['dataDaEmissao'] as String?;
    _dataDoVencimento = snapshotData['dataDoVencimento'] as String?;
    _valorNominalUnitario = snapshotData['valorNominalUnitario'] as String?;
    _quantidade = snapshotData['quantidade'] as String?;
    _convencao = snapshotData['convencao'] as String?;
    _indexador = snapshotData['indexador'] as String?;
    _percentualDoIndexador =
        castToType<double>(snapshotData['percentualDoIndexador']);
    _percentualSobre = snapshotData['percentualSobre'] as String?;
    _vencimentoDa1aParcela = snapshotData['vencimentoDa1aParcela'] as String?;
    _periodicidade = snapshotData['periodicidade'] as String?;
    _valorDosJurosRemunetorios =
        castToType<double>(snapshotData['valorDosJurosRemunetorios']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('novaOperacao');

  static Stream<NovaOperacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NovaOperacaoRecord.fromSnapshot(s));

  static Future<NovaOperacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NovaOperacaoRecord.fromSnapshot(s));

  static NovaOperacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NovaOperacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NovaOperacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NovaOperacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NovaOperacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NovaOperacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNovaOperacaoRecordData({
  DocumentReference? usuario,
  String? dataDaEmissao,
  String? dataDoVencimento,
  String? valorNominalUnitario,
  String? quantidade,
  String? convencao,
  String? indexador,
  double? percentualDoIndexador,
  String? percentualSobre,
  String? vencimentoDa1aParcela,
  String? periodicidade,
  double? valorDosJurosRemunetorios,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'dataDaEmissao': dataDaEmissao,
      'dataDoVencimento': dataDoVencimento,
      'valorNominalUnitario': valorNominalUnitario,
      'quantidade': quantidade,
      'convencao': convencao,
      'indexador': indexador,
      'percentualDoIndexador': percentualDoIndexador,
      'percentualSobre': percentualSobre,
      'vencimentoDa1aParcela': vencimentoDa1aParcela,
      'periodicidade': periodicidade,
      'valorDosJurosRemunetorios': valorDosJurosRemunetorios,
    }.withoutNulls,
  );

  return firestoreData;
}

class NovaOperacaoRecordDocumentEquality
    implements Equality<NovaOperacaoRecord> {
  const NovaOperacaoRecordDocumentEquality();

  @override
  bool equals(NovaOperacaoRecord? e1, NovaOperacaoRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.dataDaEmissao == e2?.dataDaEmissao &&
        e1?.dataDoVencimento == e2?.dataDoVencimento &&
        e1?.valorNominalUnitario == e2?.valorNominalUnitario &&
        e1?.quantidade == e2?.quantidade &&
        e1?.convencao == e2?.convencao &&
        e1?.indexador == e2?.indexador &&
        e1?.percentualDoIndexador == e2?.percentualDoIndexador &&
        e1?.percentualSobre == e2?.percentualSobre &&
        e1?.vencimentoDa1aParcela == e2?.vencimentoDa1aParcela &&
        e1?.periodicidade == e2?.periodicidade &&
        e1?.valorDosJurosRemunetorios == e2?.valorDosJurosRemunetorios;
  }

  @override
  int hash(NovaOperacaoRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.dataDaEmissao,
        e?.dataDoVencimento,
        e?.valorNominalUnitario,
        e?.quantidade,
        e?.convencao,
        e?.indexador,
        e?.percentualDoIndexador,
        e?.percentualSobre,
        e?.vencimentoDa1aParcela,
        e?.periodicidade,
        e?.valorDosJurosRemunetorios
      ]);

  @override
  bool isValidKey(Object? o) => o is NovaOperacaoRecord;
}
