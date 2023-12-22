import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserpjcomunderlineRecord extends FirestoreRecord {
  UserpjcomunderlineRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "telCelular" field.
  String? _telCelular;
  String get telCelular => _telCelular ?? '';
  bool hasTelCelular() => _telCelular != null;

  // "telOpcional" field.
  String? _telOpcional;
  String get telOpcional => _telOpcional ?? '';
  bool hasTelOpcional() => _telOpcional != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "uf" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "cnpjEmpresa" field.
  String? _cnpjEmpresa;
  String get cnpjEmpresa => _cnpjEmpresa ?? '';
  bool hasCnpjEmpresa() => _cnpjEmpresa != null;

  // "cnae" field.
  String? _cnae;
  String get cnae => _cnae ?? '';
  bool hasCnae() => _cnae != null;

  // "razaoSocial" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  bool hasRazaoSocial() => _razaoSocial != null;

  // "nomeFantasia" field.
  String? _nomeFantasia;
  String get nomeFantasia => _nomeFantasia ?? '';
  bool hasNomeFantasia() => _nomeFantasia != null;

  // "RamoAtividade" field.
  String? _ramoAtividade;
  String get ramoAtividade => _ramoAtividade ?? '';
  bool hasRamoAtividade() => _ramoAtividade != null;

  // "inscricaoMunicipal" field.
  String? _inscricaoMunicipal;
  String get inscricaoMunicipal => _inscricaoMunicipal ?? '';
  bool hasInscricaoMunicipal() => _inscricaoMunicipal != null;

  // "inscricaoEstadual" field.
  String? _inscricaoEstadual;
  String get inscricaoEstadual => _inscricaoEstadual ?? '';
  bool hasInscricaoEstadual() => _inscricaoEstadual != null;

  // "contaIntra" field.
  String? _contaIntra;
  String get contaIntra => _contaIntra ?? '';
  bool hasContaIntra() => _contaIntra != null;

  // "naturezaJurididica" field.
  String? _naturezaJurididica;
  String get naturezaJurididica => _naturezaJurididica ?? '';
  bool hasNaturezaJurididica() => _naturezaJurididica != null;

  // "webSite" field.
  String? _webSite;
  String get webSite => _webSite ?? '';
  bool hasWebSite() => _webSite != null;

  // "datadeAbertura" field.
  String? _datadeAbertura;
  String get datadeAbertura => _datadeAbertura ?? '';
  bool hasDatadeAbertura() => _datadeAbertura != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "faturamentoMedioMensal" field.
  double? _faturamentoMedioMensal;
  double get faturamentoMedioMensal => _faturamentoMedioMensal ?? 0.0;
  bool hasFaturamentoMedioMensal() => _faturamentoMedioMensal != null;

  // "margemMediaLucroBruto" field.
  double? _margemMediaLucroBruto;
  double get margemMediaLucroBruto => _margemMediaLucroBruto ?? 0.0;
  bool hasMargemMediaLucroBruto() => _margemMediaLucroBruto != null;

  // "capitalSocialInicial" field.
  double? _capitalSocialInicial;
  double get capitalSocialInicial => _capitalSocialInicial ?? 0.0;
  bool hasCapitalSocialInicial() => _capitalSocialInicial != null;

  // "patrimonioLiquido" field.
  double? _patrimonioLiquido;
  double get patrimonioLiquido => _patrimonioLiquido ?? 0.0;
  bool hasPatrimonioLiquido() => _patrimonioLiquido != null;

  // "faturamentoMediaMensal" field.
  double? _faturamentoMediaMensal;
  double get faturamentoMediaMensal => _faturamentoMediaMensal ?? 0.0;
  bool hasFaturamentoMediaMensal() => _faturamentoMediaMensal != null;

  // "valorAlugadoFinanciado" field.
  double? _valorAlugadoFinanciado;
  double get valorAlugadoFinanciado => _valorAlugadoFinanciado ?? 0.0;
  bool hasValorAlugadoFinanciado() => _valorAlugadoFinanciado != null;

  // "exportacao" field.
  double? _exportacao;
  double get exportacao => _exportacao ?? 0.0;
  bool hasExportacao() => _exportacao != null;

  // "custocomFornecedores" field.
  double? _custocomFornecedores;
  double get custocomFornecedores => _custocomFornecedores ?? 0.0;
  bool hasCustocomFornecedores() => _custocomFornecedores != null;

  // "numerodeFuncionarios" field.
  double? _numerodeFuncionarios;
  double get numerodeFuncionarios => _numerodeFuncionarios ?? 0.0;
  bool hasNumerodeFuncionarios() => _numerodeFuncionarios != null;

  // "valorFolhadePagamento" field.
  double? _valorFolhadePagamento;
  double get valorFolhadePagamento => _valorFolhadePagamento ?? 0.0;
  bool hasValorFolhadePagamento() => _valorFolhadePagamento != null;

  // "valorGastoImposto" field.
  double? _valorGastoImposto;
  double get valorGastoImposto => _valorGastoImposto ?? 0.0;
  bool hasValorGastoImposto() => _valorGastoImposto != null;

  // "localSede" field.
  String? _localSede;
  String get localSede => _localSede ?? '';
  bool hasLocalSede() => _localSede != null;

  // "PMV" field.
  double? _pmv;
  double get pmv => _pmv ?? 0.0;
  bool hasPmv() => _pmv != null;

  // "percentualVenda" field.
  double? _percentualVenda;
  double get percentualVenda => _percentualVenda ?? 0.0;
  bool hasPercentualVenda() => _percentualVenda != null;

  // "valorFolhaPagamento" field.
  double? _valorFolhaPagamento;
  double get valorFolhaPagamento => _valorFolhaPagamento ?? 0.0;
  bool hasValorFolhaPagamento() => _valorFolhaPagamento != null;

  // "permitirContato" field.
  bool? _permitirContato;
  bool get permitirContato => _permitirContato ?? false;
  bool hasPermitirContato() => _permitirContato != null;

  // "permitirAcessoRecebiveis" field.
  bool? _permitirAcessoRecebiveis;
  bool get permitirAcessoRecebiveis => _permitirAcessoRecebiveis ?? false;
  bool hasPermitirAcessoRecebiveis() => _permitirAcessoRecebiveis != null;

  // "permitirAcessoAPIParceira" field.
  bool? _permitirAcessoAPIParceira;
  bool get permitirAcessoAPIParceira => _permitirAcessoAPIParceira ?? false;
  bool hasPermitirAcessoAPIParceira() => _permitirAcessoAPIParceira != null;

  // "fundoCessionario" field.
  String? _fundoCessionario;
  String get fundoCessionario => _fundoCessionario ?? '';
  bool hasFundoCessionario() => _fundoCessionario != null;

  // "codigoBanco" field.
  String? _codigoBanco;
  String get codigoBanco => _codigoBanco ?? '';
  bool hasCodigoBanco() => _codigoBanco != null;

  // "tipoDeConta" field.
  String? _tipoDeConta;
  String get tipoDeConta => _tipoDeConta ?? '';
  bool hasTipoDeConta() => _tipoDeConta != null;

  // "agenciaConta" field.
  String? _agenciaConta;
  String get agenciaConta => _agenciaConta ?? '';
  bool hasAgenciaConta() => _agenciaConta != null;

  // "conta" field.
  String? _conta;
  String get conta => _conta ?? '';
  bool hasConta() => _conta != null;

  // "digitoConta" field.
  String? _digitoConta;
  String get digitoConta => _digitoConta ?? '';
  bool hasDigitoConta() => _digitoConta != null;

  // "chavePix" field.
  String? _chavePix;
  String get chavePix => _chavePix ?? '';
  bool hasChavePix() => _chavePix != null;

  // "idRetorno" field.
  String? _idRetorno;
  String get idRetorno => _idRetorno ?? '';
  bool hasIdRetorno() => _idRetorno != null;

  // "dataDaSolicitacao" field.
  String? _dataDaSolicitacao;
  String get dataDaSolicitacao => _dataDaSolicitacao ?? '';
  bool hasDataDaSolicitacao() => _dataDaSolicitacao != null;

  // "situacaoAPI" field.
  String? _situacaoAPI;
  String get situacaoAPI => _situacaoAPI ?? '';
  bool hasSituacaoAPI() => _situacaoAPI != null;

  // "agenciaBanco" field.
  String? _agenciaBanco;
  String get agenciaBanco => _agenciaBanco ?? '';
  bool hasAgenciaBanco() => _agenciaBanco != null;

  // "user_API" field.
  DocumentReference? _userAPI;
  DocumentReference? get userAPI => _userAPI;
  bool hasUserAPI() => _userAPI != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _telCelular = snapshotData['telCelular'] as String?;
    _telOpcional = snapshotData['telOpcional'] as String?;
    _cep = snapshotData['cep'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _complemento = snapshotData['complemento'] as String?;
    _uf = snapshotData['uf'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _numero = snapshotData['numero'] as String?;
    _cnpjEmpresa = snapshotData['cnpjEmpresa'] as String?;
    _cnae = snapshotData['cnae'] as String?;
    _razaoSocial = snapshotData['razaoSocial'] as String?;
    _nomeFantasia = snapshotData['nomeFantasia'] as String?;
    _ramoAtividade = snapshotData['RamoAtividade'] as String?;
    _inscricaoMunicipal = snapshotData['inscricaoMunicipal'] as String?;
    _inscricaoEstadual = snapshotData['inscricaoEstadual'] as String?;
    _contaIntra = snapshotData['contaIntra'] as String?;
    _naturezaJurididica = snapshotData['naturezaJurididica'] as String?;
    _webSite = snapshotData['webSite'] as String?;
    _datadeAbertura = snapshotData['datadeAbertura'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _faturamentoMedioMensal =
        castToType<double>(snapshotData['faturamentoMedioMensal']);
    _margemMediaLucroBruto =
        castToType<double>(snapshotData['margemMediaLucroBruto']);
    _capitalSocialInicial =
        castToType<double>(snapshotData['capitalSocialInicial']);
    _patrimonioLiquido = castToType<double>(snapshotData['patrimonioLiquido']);
    _faturamentoMediaMensal =
        castToType<double>(snapshotData['faturamentoMediaMensal']);
    _valorAlugadoFinanciado =
        castToType<double>(snapshotData['valorAlugadoFinanciado']);
    _exportacao = castToType<double>(snapshotData['exportacao']);
    _custocomFornecedores =
        castToType<double>(snapshotData['custocomFornecedores']);
    _numerodeFuncionarios =
        castToType<double>(snapshotData['numerodeFuncionarios']);
    _valorFolhadePagamento =
        castToType<double>(snapshotData['valorFolhadePagamento']);
    _valorGastoImposto = castToType<double>(snapshotData['valorGastoImposto']);
    _localSede = snapshotData['localSede'] as String?;
    _pmv = castToType<double>(snapshotData['PMV']);
    _percentualVenda = castToType<double>(snapshotData['percentualVenda']);
    _valorFolhaPagamento =
        castToType<double>(snapshotData['valorFolhaPagamento']);
    _permitirContato = snapshotData['permitirContato'] as bool?;
    _permitirAcessoRecebiveis =
        snapshotData['permitirAcessoRecebiveis'] as bool?;
    _permitirAcessoAPIParceira =
        snapshotData['permitirAcessoAPIParceira'] as bool?;
    _fundoCessionario = snapshotData['fundoCessionario'] as String?;
    _codigoBanco = snapshotData['codigoBanco'] as String?;
    _tipoDeConta = snapshotData['tipoDeConta'] as String?;
    _agenciaConta = snapshotData['agenciaConta'] as String?;
    _conta = snapshotData['conta'] as String?;
    _digitoConta = snapshotData['digitoConta'] as String?;
    _chavePix = snapshotData['chavePix'] as String?;
    _idRetorno = snapshotData['idRetorno'] as String?;
    _dataDaSolicitacao = snapshotData['dataDaSolicitacao'] as String?;
    _situacaoAPI = snapshotData['situacaoAPI'] as String?;
    _agenciaBanco = snapshotData['agenciaBanco'] as String?;
    _userAPI = snapshotData['user_API'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userpjcomunderline');

  static Stream<UserpjcomunderlineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserpjcomunderlineRecord.fromSnapshot(s));

  static Future<UserpjcomunderlineRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserpjcomunderlineRecord.fromSnapshot(s));

  static UserpjcomunderlineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserpjcomunderlineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserpjcomunderlineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserpjcomunderlineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserpjcomunderlineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserpjcomunderlineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserpjcomunderlineRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? telCelular,
  String? telOpcional,
  String? cep,
  String? endereco,
  String? cidade,
  String? complemento,
  String? uf,
  String? bairro,
  String? numero,
  String? cnpjEmpresa,
  String? cnae,
  String? razaoSocial,
  String? nomeFantasia,
  String? ramoAtividade,
  String? inscricaoMunicipal,
  String? inscricaoEstadual,
  String? contaIntra,
  String? naturezaJurididica,
  String? webSite,
  String? datadeAbertura,
  DocumentReference? usuario,
  double? faturamentoMedioMensal,
  double? margemMediaLucroBruto,
  double? capitalSocialInicial,
  double? patrimonioLiquido,
  double? faturamentoMediaMensal,
  double? valorAlugadoFinanciado,
  double? exportacao,
  double? custocomFornecedores,
  double? numerodeFuncionarios,
  double? valorFolhadePagamento,
  double? valorGastoImposto,
  String? localSede,
  double? pmv,
  double? percentualVenda,
  double? valorFolhaPagamento,
  bool? permitirContato,
  bool? permitirAcessoRecebiveis,
  bool? permitirAcessoAPIParceira,
  String? fundoCessionario,
  String? codigoBanco,
  String? tipoDeConta,
  String? agenciaConta,
  String? conta,
  String? digitoConta,
  String? chavePix,
  String? idRetorno,
  String? dataDaSolicitacao,
  String? situacaoAPI,
  String? agenciaBanco,
  DocumentReference? userAPI,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'telCelular': telCelular,
      'telOpcional': telOpcional,
      'cep': cep,
      'endereco': endereco,
      'cidade': cidade,
      'complemento': complemento,
      'uf': uf,
      'bairro': bairro,
      'numero': numero,
      'cnpjEmpresa': cnpjEmpresa,
      'cnae': cnae,
      'razaoSocial': razaoSocial,
      'nomeFantasia': nomeFantasia,
      'RamoAtividade': ramoAtividade,
      'inscricaoMunicipal': inscricaoMunicipal,
      'inscricaoEstadual': inscricaoEstadual,
      'contaIntra': contaIntra,
      'naturezaJurididica': naturezaJurididica,
      'webSite': webSite,
      'datadeAbertura': datadeAbertura,
      'usuario': usuario,
      'faturamentoMedioMensal': faturamentoMedioMensal,
      'margemMediaLucroBruto': margemMediaLucroBruto,
      'capitalSocialInicial': capitalSocialInicial,
      'patrimonioLiquido': patrimonioLiquido,
      'faturamentoMediaMensal': faturamentoMediaMensal,
      'valorAlugadoFinanciado': valorAlugadoFinanciado,
      'exportacao': exportacao,
      'custocomFornecedores': custocomFornecedores,
      'numerodeFuncionarios': numerodeFuncionarios,
      'valorFolhadePagamento': valorFolhadePagamento,
      'valorGastoImposto': valorGastoImposto,
      'localSede': localSede,
      'PMV': pmv,
      'percentualVenda': percentualVenda,
      'valorFolhaPagamento': valorFolhaPagamento,
      'permitirContato': permitirContato,
      'permitirAcessoRecebiveis': permitirAcessoRecebiveis,
      'permitirAcessoAPIParceira': permitirAcessoAPIParceira,
      'fundoCessionario': fundoCessionario,
      'codigoBanco': codigoBanco,
      'tipoDeConta': tipoDeConta,
      'agenciaConta': agenciaConta,
      'conta': conta,
      'digitoConta': digitoConta,
      'chavePix': chavePix,
      'idRetorno': idRetorno,
      'dataDaSolicitacao': dataDaSolicitacao,
      'situacaoAPI': situacaoAPI,
      'agenciaBanco': agenciaBanco,
      'user_API': userAPI,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserpjcomunderlineRecordDocumentEquality
    implements Equality<UserpjcomunderlineRecord> {
  const UserpjcomunderlineRecordDocumentEquality();

  @override
  bool equals(UserpjcomunderlineRecord? e1, UserpjcomunderlineRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.telCelular == e2?.telCelular &&
        e1?.telOpcional == e2?.telOpcional &&
        e1?.cep == e2?.cep &&
        e1?.endereco == e2?.endereco &&
        e1?.cidade == e2?.cidade &&
        e1?.complemento == e2?.complemento &&
        e1?.uf == e2?.uf &&
        e1?.bairro == e2?.bairro &&
        e1?.numero == e2?.numero &&
        e1?.cnpjEmpresa == e2?.cnpjEmpresa &&
        e1?.cnae == e2?.cnae &&
        e1?.razaoSocial == e2?.razaoSocial &&
        e1?.nomeFantasia == e2?.nomeFantasia &&
        e1?.ramoAtividade == e2?.ramoAtividade &&
        e1?.inscricaoMunicipal == e2?.inscricaoMunicipal &&
        e1?.inscricaoEstadual == e2?.inscricaoEstadual &&
        e1?.contaIntra == e2?.contaIntra &&
        e1?.naturezaJurididica == e2?.naturezaJurididica &&
        e1?.webSite == e2?.webSite &&
        e1?.datadeAbertura == e2?.datadeAbertura &&
        e1?.usuario == e2?.usuario &&
        e1?.faturamentoMedioMensal == e2?.faturamentoMedioMensal &&
        e1?.margemMediaLucroBruto == e2?.margemMediaLucroBruto &&
        e1?.capitalSocialInicial == e2?.capitalSocialInicial &&
        e1?.patrimonioLiquido == e2?.patrimonioLiquido &&
        e1?.faturamentoMediaMensal == e2?.faturamentoMediaMensal &&
        e1?.valorAlugadoFinanciado == e2?.valorAlugadoFinanciado &&
        e1?.exportacao == e2?.exportacao &&
        e1?.custocomFornecedores == e2?.custocomFornecedores &&
        e1?.numerodeFuncionarios == e2?.numerodeFuncionarios &&
        e1?.valorFolhadePagamento == e2?.valorFolhadePagamento &&
        e1?.valorGastoImposto == e2?.valorGastoImposto &&
        e1?.localSede == e2?.localSede &&
        e1?.pmv == e2?.pmv &&
        e1?.percentualVenda == e2?.percentualVenda &&
        e1?.valorFolhaPagamento == e2?.valorFolhaPagamento &&
        e1?.permitirContato == e2?.permitirContato &&
        e1?.permitirAcessoRecebiveis == e2?.permitirAcessoRecebiveis &&
        e1?.permitirAcessoAPIParceira == e2?.permitirAcessoAPIParceira &&
        e1?.fundoCessionario == e2?.fundoCessionario &&
        e1?.codigoBanco == e2?.codigoBanco &&
        e1?.tipoDeConta == e2?.tipoDeConta &&
        e1?.agenciaConta == e2?.agenciaConta &&
        e1?.conta == e2?.conta &&
        e1?.digitoConta == e2?.digitoConta &&
        e1?.chavePix == e2?.chavePix &&
        e1?.idRetorno == e2?.idRetorno &&
        e1?.dataDaSolicitacao == e2?.dataDaSolicitacao &&
        e1?.situacaoAPI == e2?.situacaoAPI &&
        e1?.agenciaBanco == e2?.agenciaBanco &&
        e1?.userAPI == e2?.userAPI;
  }

  @override
  int hash(UserpjcomunderlineRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.telCelular,
        e?.telOpcional,
        e?.cep,
        e?.endereco,
        e?.cidade,
        e?.complemento,
        e?.uf,
        e?.bairro,
        e?.numero,
        e?.cnpjEmpresa,
        e?.cnae,
        e?.razaoSocial,
        e?.nomeFantasia,
        e?.ramoAtividade,
        e?.inscricaoMunicipal,
        e?.inscricaoEstadual,
        e?.contaIntra,
        e?.naturezaJurididica,
        e?.webSite,
        e?.datadeAbertura,
        e?.usuario,
        e?.faturamentoMedioMensal,
        e?.margemMediaLucroBruto,
        e?.capitalSocialInicial,
        e?.patrimonioLiquido,
        e?.faturamentoMediaMensal,
        e?.valorAlugadoFinanciado,
        e?.exportacao,
        e?.custocomFornecedores,
        e?.numerodeFuncionarios,
        e?.valorFolhadePagamento,
        e?.valorGastoImposto,
        e?.localSede,
        e?.pmv,
        e?.percentualVenda,
        e?.valorFolhaPagamento,
        e?.permitirContato,
        e?.permitirAcessoRecebiveis,
        e?.permitirAcessoAPIParceira,
        e?.fundoCessionario,
        e?.codigoBanco,
        e?.tipoDeConta,
        e?.agenciaConta,
        e?.conta,
        e?.digitoConta,
        e?.chavePix,
        e?.idRetorno,
        e?.dataDaSolicitacao,
        e?.situacaoAPI,
        e?.agenciaBanco,
        e?.userAPI
      ]);

  @override
  bool isValidKey(Object? o) => o is UserpjcomunderlineRecord;
}
