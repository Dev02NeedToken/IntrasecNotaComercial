import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RetornoAPIEmissorRecord extends FirestoreRecord {
  RetornoAPIEmissorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "situacao" field.
  String? _situacao;
  String get situacao => _situacao ?? '';
  bool hasSituacao() => _situacao != null;

  // "dataDaSolicitacao" field.
  String? _dataDaSolicitacao;
  String get dataDaSolicitacao => _dataDaSolicitacao ?? '';
  bool hasDataDaSolicitacao() => _dataDaSolicitacao != null;

  // "representantesLegais" field.
  String? _representantesLegais;
  String get representantesLegais => _representantesLegais ?? '';
  bool hasRepresentantesLegais() => _representantesLegais != null;

  // "documentos" field.
  List<String>? _documentos;
  List<String> get documentos => _documentos ?? const [];
  bool hasDocumentos() => _documentos != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  bool hasCnpj() => _cnpj != null;

  // "razaoSocial" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  bool hasRazaoSocial() => _razaoSocial != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  bool hasLogradouro() => _logradouro != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "atividadePrincipal" field.
  String? _atividadePrincipal;
  String get atividadePrincipal => _atividadePrincipal ?? '';
  bool hasAtividadePrincipal() => _atividadePrincipal != null;

  // "razaoSocialBancoLiquidante" field.
  String? _razaoSocialBancoLiquidante;
  String get razaoSocialBancoLiquidante => _razaoSocialBancoLiquidante ?? '';
  bool hasRazaoSocialBancoLiquidante() => _razaoSocialBancoLiquidante != null;

  // "ispbBancoLiquidante" field.
  String? _ispbBancoLiquidante;
  String get ispbBancoLiquidante => _ispbBancoLiquidante ?? '';
  bool hasIspbBancoLiquidante() => _ispbBancoLiquidante != null;

  // "agenciaBancoLiquidante" field.
  String? _agenciaBancoLiquidante;
  String get agenciaBancoLiquidante => _agenciaBancoLiquidante ?? '';
  bool hasAgenciaBancoLiquidante() => _agenciaBancoLiquidante != null;

  // "contaBancoLiquidante" field.
  String? _contaBancoLiquidante;
  String get contaBancoLiquidante => _contaBancoLiquidante ?? '';
  bool hasContaBancoLiquidante() => _contaBancoLiquidante != null;

  // "telefones" field.
  List<String>? _telefones;
  List<String> get telefones => _telefones ?? const [];
  bool hasTelefones() => _telefones != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "faturamentoMedioMensal12Meses" field.
  double? _faturamentoMedioMensal12Meses;
  double get faturamentoMedioMensal12Meses =>
      _faturamentoMedioMensal12Meses ?? 0.0;
  bool hasFaturamentoMedioMensal12Meses() =>
      _faturamentoMedioMensal12Meses != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _situacao = snapshotData['situacao'] as String?;
    _dataDaSolicitacao = snapshotData['dataDaSolicitacao'] as String?;
    _representantesLegais = snapshotData['representantesLegais'] as String?;
    _documentos = getDataList(snapshotData['documentos']);
    _cnpj = snapshotData['cnpj'] as String?;
    _razaoSocial = snapshotData['razaoSocial'] as String?;
    _complemento = snapshotData['complemento'] as String?;
    _cep = snapshotData['cep'] as String?;
    _logradouro = snapshotData['logradouro'] as String?;
    _numero = snapshotData['numero'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _uf = snapshotData['uf'] as String?;
    _atividadePrincipal = snapshotData['atividadePrincipal'] as String?;
    _razaoSocialBancoLiquidante =
        snapshotData['razaoSocialBancoLiquidante'] as String?;
    _ispbBancoLiquidante = snapshotData['ispbBancoLiquidante'] as String?;
    _agenciaBancoLiquidante = snapshotData['agenciaBancoLiquidante'] as String?;
    _contaBancoLiquidante = snapshotData['contaBancoLiquidante'] as String?;
    _telefones = getDataList(snapshotData['telefones']);
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _faturamentoMedioMensal12Meses =
        castToType<double>(snapshotData['faturamentoMedioMensal12Meses']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RetornoAPIEmissor');

  static Stream<RetornoAPIEmissorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RetornoAPIEmissorRecord.fromSnapshot(s));

  static Future<RetornoAPIEmissorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RetornoAPIEmissorRecord.fromSnapshot(s));

  static RetornoAPIEmissorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RetornoAPIEmissorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RetornoAPIEmissorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RetornoAPIEmissorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RetornoAPIEmissorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RetornoAPIEmissorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRetornoAPIEmissorRecordData({
  String? id,
  String? situacao,
  String? dataDaSolicitacao,
  String? representantesLegais,
  String? cnpj,
  String? razaoSocial,
  String? complemento,
  String? cep,
  String? logradouro,
  String? numero,
  String? bairro,
  String? cidade,
  String? uf,
  String? atividadePrincipal,
  String? razaoSocialBancoLiquidante,
  String? ispbBancoLiquidante,
  String? agenciaBancoLiquidante,
  String? contaBancoLiquidante,
  DocumentReference? usuario,
  double? faturamentoMedioMensal12Meses,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'situacao': situacao,
      'dataDaSolicitacao': dataDaSolicitacao,
      'representantesLegais': representantesLegais,
      'cnpj': cnpj,
      'razaoSocial': razaoSocial,
      'complemento': complemento,
      'cep': cep,
      'logradouro': logradouro,
      'numero': numero,
      'bairro': bairro,
      'cidade': cidade,
      'uf': uf,
      'atividadePrincipal': atividadePrincipal,
      'razaoSocialBancoLiquidante': razaoSocialBancoLiquidante,
      'ispbBancoLiquidante': ispbBancoLiquidante,
      'agenciaBancoLiquidante': agenciaBancoLiquidante,
      'contaBancoLiquidante': contaBancoLiquidante,
      'usuario': usuario,
      'faturamentoMedioMensal12Meses': faturamentoMedioMensal12Meses,
    }.withoutNulls,
  );

  return firestoreData;
}

class RetornoAPIEmissorRecordDocumentEquality
    implements Equality<RetornoAPIEmissorRecord> {
  const RetornoAPIEmissorRecordDocumentEquality();

  @override
  bool equals(RetornoAPIEmissorRecord? e1, RetornoAPIEmissorRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.situacao == e2?.situacao &&
        e1?.dataDaSolicitacao == e2?.dataDaSolicitacao &&
        e1?.representantesLegais == e2?.representantesLegais &&
        listEquality.equals(e1?.documentos, e2?.documentos) &&
        e1?.cnpj == e2?.cnpj &&
        e1?.razaoSocial == e2?.razaoSocial &&
        e1?.complemento == e2?.complemento &&
        e1?.cep == e2?.cep &&
        e1?.logradouro == e2?.logradouro &&
        e1?.numero == e2?.numero &&
        e1?.bairro == e2?.bairro &&
        e1?.cidade == e2?.cidade &&
        e1?.uf == e2?.uf &&
        e1?.atividadePrincipal == e2?.atividadePrincipal &&
        e1?.razaoSocialBancoLiquidante == e2?.razaoSocialBancoLiquidante &&
        e1?.ispbBancoLiquidante == e2?.ispbBancoLiquidante &&
        e1?.agenciaBancoLiquidante == e2?.agenciaBancoLiquidante &&
        e1?.contaBancoLiquidante == e2?.contaBancoLiquidante &&
        listEquality.equals(e1?.telefones, e2?.telefones) &&
        e1?.usuario == e2?.usuario &&
        e1?.faturamentoMedioMensal12Meses == e2?.faturamentoMedioMensal12Meses;
  }

  @override
  int hash(RetornoAPIEmissorRecord? e) => const ListEquality().hash([
        e?.id,
        e?.situacao,
        e?.dataDaSolicitacao,
        e?.representantesLegais,
        e?.documentos,
        e?.cnpj,
        e?.razaoSocial,
        e?.complemento,
        e?.cep,
        e?.logradouro,
        e?.numero,
        e?.bairro,
        e?.cidade,
        e?.uf,
        e?.atividadePrincipal,
        e?.razaoSocialBancoLiquidante,
        e?.ispbBancoLiquidante,
        e?.agenciaBancoLiquidante,
        e?.contaBancoLiquidante,
        e?.telefones,
        e?.usuario,
        e?.faturamentoMedioMensal12Meses
      ]);

  @override
  bool isValidKey(Object? o) => o is RetornoAPIEmissorRecord;
}
