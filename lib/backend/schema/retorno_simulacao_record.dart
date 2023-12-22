import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RetornoSimulacaoRecord extends FirestoreRecord {
  RetornoSimulacaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "id" field.
  List<String>? _id;
  List<String> get id => _id ?? const [];
  bool hasId() => _id != null;

  // "data" field.
  List<String>? _data;
  List<String> get data => _data ?? const [];
  bool hasData() => _data != null;

  // "indexador" field.
  List<String>? _indexador;
  List<String> get indexador => _indexador ?? const [];
  bool hasIndexador() => _indexador != null;

  // "valorAquisicao" field.
  List<double>? _valorAquisicao;
  List<double> get valorAquisicao => _valorAquisicao ?? const [];
  bool hasValorAquisicao() => _valorAquisicao != null;

  // "juros" field.
  List<double>? _juros;
  List<double> get juros => _juros ?? const [];
  bool hasJuros() => _juros != null;

  // "taxaDeJuros" field.
  List<double>? _taxaDeJuros;
  List<double> get taxaDeJuros => _taxaDeJuros ?? const [];
  bool hasTaxaDeJuros() => _taxaDeJuros != null;

  // "principal" field.
  List<double>? _principal;
  List<double> get principal => _principal ?? const [];
  bool hasPrincipal() => _principal != null;

  // "porcentagemAmortizacao" field.
  List<double>? _porcentagemAmortizacao;
  List<double> get porcentagemAmortizacao =>
      _porcentagemAmortizacao ?? const [];
  bool hasPorcentagemAmortizacao() => _porcentagemAmortizacao != null;

  // "valorParcela" field.
  List<double>? _valorParcela;
  List<double> get valorParcela => _valorParcela ?? const [];
  bool hasValorParcela() => _valorParcela != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "restAPI" field.
  List<String>? _restAPI;
  List<String> get restAPI => _restAPI ?? const [];
  bool hasRestAPI() => _restAPI != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _id = getDataList(snapshotData['id']);
    _data = getDataList(snapshotData['data']);
    _indexador = getDataList(snapshotData['indexador']);
    _valorAquisicao = getDataList(snapshotData['valorAquisicao']);
    _juros = getDataList(snapshotData['juros']);
    _taxaDeJuros = getDataList(snapshotData['taxaDeJuros']);
    _principal = getDataList(snapshotData['principal']);
    _porcentagemAmortizacao =
        getDataList(snapshotData['porcentagemAmortizacao']);
    _valorParcela = getDataList(snapshotData['valorParcela']);
    _userID = snapshotData['userID'] as String?;
    _restAPI = getDataList(snapshotData['restAPI']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('retorno_simulacao');

  static Stream<RetornoSimulacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RetornoSimulacaoRecord.fromSnapshot(s));

  static Future<RetornoSimulacaoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RetornoSimulacaoRecord.fromSnapshot(s));

  static RetornoSimulacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RetornoSimulacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RetornoSimulacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RetornoSimulacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RetornoSimulacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RetornoSimulacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRetornoSimulacaoRecordData({
  DocumentReference? usuario,
  String? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class RetornoSimulacaoRecordDocumentEquality
    implements Equality<RetornoSimulacaoRecord> {
  const RetornoSimulacaoRecordDocumentEquality();

  @override
  bool equals(RetornoSimulacaoRecord? e1, RetornoSimulacaoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.usuario == e2?.usuario &&
        listEquality.equals(e1?.id, e2?.id) &&
        listEquality.equals(e1?.data, e2?.data) &&
        listEquality.equals(e1?.indexador, e2?.indexador) &&
        listEquality.equals(e1?.valorAquisicao, e2?.valorAquisicao) &&
        listEquality.equals(e1?.juros, e2?.juros) &&
        listEquality.equals(e1?.taxaDeJuros, e2?.taxaDeJuros) &&
        listEquality.equals(e1?.principal, e2?.principal) &&
        listEquality.equals(
            e1?.porcentagemAmortizacao, e2?.porcentagemAmortizacao) &&
        listEquality.equals(e1?.valorParcela, e2?.valorParcela) &&
        e1?.userID == e2?.userID &&
        listEquality.equals(e1?.restAPI, e2?.restAPI);
  }

  @override
  int hash(RetornoSimulacaoRecord? e) => const ListEquality().hash([
        e?.usuario,
        e?.id,
        e?.data,
        e?.indexador,
        e?.valorAquisicao,
        e?.juros,
        e?.taxaDeJuros,
        e?.principal,
        e?.porcentagemAmortizacao,
        e?.valorParcela,
        e?.userID,
        e?.restAPI
      ]);

  @override
  bool isValidKey(Object? o) => o is RetornoSimulacaoRecord;
}
