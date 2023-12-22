import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsercadastroPessoaJuridicaRecord extends FirestoreRecord {
  UsercadastroPessoaJuridicaRecord._(
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
  String? _faturamentoMedioMensal;
  String get faturamentoMedioMensal => _faturamentoMedioMensal ?? '';
  bool hasFaturamentoMedioMensal() => _faturamentoMedioMensal != null;

  // "capitalSocialInicial" field.
  String? _capitalSocialInicial;
  String get capitalSocialInicial => _capitalSocialInicial ?? '';
  bool hasCapitalSocialInicial() => _capitalSocialInicial != null;

  // "patrimonioLiquido" field.
  String? _patrimonioLiquido;
  String get patrimonioLiquido => _patrimonioLiquido ?? '';
  bool hasPatrimonioLiquido() => _patrimonioLiquido != null;

  // "valorAlugadoFinanciado" field.
  String? _valorAlugadoFinanciado;
  String get valorAlugadoFinanciado => _valorAlugadoFinanciado ?? '';
  bool hasValorAlugadoFinanciado() => _valorAlugadoFinanciado != null;

  // "exportacao" field.
  String? _exportacao;
  String get exportacao => _exportacao ?? '';
  bool hasExportacao() => _exportacao != null;

  // "localSede" field.
  String? _localSede;
  String get localSede => _localSede ?? '';
  bool hasLocalSede() => _localSede != null;

  // "PMV" field.
  String? _pmv;
  String get pmv => _pmv ?? '';
  bool hasPmv() => _pmv != null;

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

  // "ispb" field.
  String? _ispb;
  String get ispb => _ispb ?? '';
  bool hasIspb() => _ispb != null;

  // "faturamentoAnual" field.
  String? _faturamentoAnual;
  String get faturamentoAnual => _faturamentoAnual ?? '';
  bool hasFaturamentoAnual() => _faturamentoAnual != null;

  // "margemMediaDeLucroBruto" field.
  String? _margemMediaDeLucroBruto;
  String get margemMediaDeLucroBruto => _margemMediaDeLucroBruto ?? '';
  bool hasMargemMediaDeLucroBruto() => _margemMediaDeLucroBruto != null;

  // "custoComFornecedores" field.
  String? _custoComFornecedores;
  String get custoComFornecedores => _custoComFornecedores ?? '';
  bool hasCustoComFornecedores() => _custoComFornecedores != null;

  // "numeroDeFuncionarios" field.
  String? _numeroDeFuncionarios;
  String get numeroDeFuncionarios => _numeroDeFuncionarios ?? '';
  bool hasNumeroDeFuncionarios() => _numeroDeFuncionarios != null;

  // "valorDaFolhaDePagamento" field.
  String? _valorDaFolhaDePagamento;
  String get valorDaFolhaDePagamento => _valorDaFolhaDePagamento ?? '';
  bool hasValorDaFolhaDePagamento() => _valorDaFolhaDePagamento != null;

  // "valorGastoComImposto" field.
  String? _valorGastoComImposto;
  String get valorGastoComImposto => _valorGastoComImposto ?? '';
  bool hasValorGastoComImposto() => _valorGastoComImposto != null;

  // "percentualDeVendaAtra" field.
  String? _percentualDeVendaAtra;
  String get percentualDeVendaAtra => _percentualDeVendaAtra ?? '';
  bool hasPercentualDeVendaAtra() => _percentualDeVendaAtra != null;

  // "valorMinimo" field.
  double? _valorMinimo;
  double get valorMinimo => _valorMinimo ?? 0.0;
  bool hasValorMinimo() => _valorMinimo != null;

  // "custoDaEmissao" field.
  double? _custoDaEmissao;
  double get custoDaEmissao => _custoDaEmissao ?? 0.0;
  bool hasCustoDaEmissao() => _custoDaEmissao != null;

  // "porcentagem" field.
  double? _porcentagem;
  double get porcentagem => _porcentagem ?? 0.0;
  bool hasPorcentagem() => _porcentagem != null;

  // "emailResponsavel" field.
  String? _emailResponsavel;
  String get emailResponsavel => _emailResponsavel ?? '';
  bool hasEmailResponsavel() => _emailResponsavel != null;

  // "nomeResponsavel" field.
  String? _nomeResponsavel;
  String get nomeResponsavel => _nomeResponsavel ?? '';
  bool hasNomeResponsavel() => _nomeResponsavel != null;

  // "telefoneResponsavel" field.
  String? _telefoneResponsavel;
  String get telefoneResponsavel => _telefoneResponsavel ?? '';
  bool hasTelefoneResponsavel() => _telefoneResponsavel != null;

  // "cpfOuCnpjResponsavel" field.
  String? _cpfOuCnpjResponsavel;
  String get cpfOuCnpjResponsavel => _cpfOuCnpjResponsavel ?? '';
  bool hasCpfOuCnpjResponsavel() => _cpfOuCnpjResponsavel != null;

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
    _faturamentoMedioMensal = snapshotData['faturamentoMedioMensal'] as String?;
    _capitalSocialInicial = snapshotData['capitalSocialInicial'] as String?;
    _patrimonioLiquido = snapshotData['patrimonioLiquido'] as String?;
    _valorAlugadoFinanciado = snapshotData['valorAlugadoFinanciado'] as String?;
    _exportacao = snapshotData['exportacao'] as String?;
    _localSede = snapshotData['localSede'] as String?;
    _pmv = snapshotData['PMV'] as String?;
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
    _ispb = snapshotData['ispb'] as String?;
    _faturamentoAnual = snapshotData['faturamentoAnual'] as String?;
    _margemMediaDeLucroBruto =
        snapshotData['margemMediaDeLucroBruto'] as String?;
    _custoComFornecedores = snapshotData['custoComFornecedores'] as String?;
    _numeroDeFuncionarios = snapshotData['numeroDeFuncionarios'] as String?;
    _valorDaFolhaDePagamento =
        snapshotData['valorDaFolhaDePagamento'] as String?;
    _valorGastoComImposto = snapshotData['valorGastoComImposto'] as String?;
    _percentualDeVendaAtra = snapshotData['percentualDeVendaAtra'] as String?;
    _valorMinimo = castToType<double>(snapshotData['valorMinimo']);
    _custoDaEmissao = castToType<double>(snapshotData['custoDaEmissao']);
    _porcentagem = castToType<double>(snapshotData['porcentagem']);
    _emailResponsavel = snapshotData['emailResponsavel'] as String?;
    _nomeResponsavel = snapshotData['nomeResponsavel'] as String?;
    _telefoneResponsavel = snapshotData['telefoneResponsavel'] as String?;
    _cpfOuCnpjResponsavel = snapshotData['cpfOuCnpjResponsavel'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usercadastroPessoaJuridica');

  static Stream<UsercadastroPessoaJuridicaRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => UsercadastroPessoaJuridicaRecord.fromSnapshot(s));

  static Future<UsercadastroPessoaJuridicaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UsercadastroPessoaJuridicaRecord.fromSnapshot(s));

  static UsercadastroPessoaJuridicaRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      UsercadastroPessoaJuridicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsercadastroPessoaJuridicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsercadastroPessoaJuridicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsercadastroPessoaJuridicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsercadastroPessoaJuridicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsercadastroPessoaJuridicaRecordData({
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
  String? faturamentoMedioMensal,
  String? capitalSocialInicial,
  String? patrimonioLiquido,
  String? valorAlugadoFinanciado,
  String? exportacao,
  String? localSede,
  String? pmv,
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
  String? ispb,
  String? faturamentoAnual,
  String? margemMediaDeLucroBruto,
  String? custoComFornecedores,
  String? numeroDeFuncionarios,
  String? valorDaFolhaDePagamento,
  String? valorGastoComImposto,
  String? percentualDeVendaAtra,
  double? valorMinimo,
  double? custoDaEmissao,
  double? porcentagem,
  String? emailResponsavel,
  String? nomeResponsavel,
  String? telefoneResponsavel,
  String? cpfOuCnpjResponsavel,
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
      'capitalSocialInicial': capitalSocialInicial,
      'patrimonioLiquido': patrimonioLiquido,
      'valorAlugadoFinanciado': valorAlugadoFinanciado,
      'exportacao': exportacao,
      'localSede': localSede,
      'PMV': pmv,
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
      'ispb': ispb,
      'faturamentoAnual': faturamentoAnual,
      'margemMediaDeLucroBruto': margemMediaDeLucroBruto,
      'custoComFornecedores': custoComFornecedores,
      'numeroDeFuncionarios': numeroDeFuncionarios,
      'valorDaFolhaDePagamento': valorDaFolhaDePagamento,
      'valorGastoComImposto': valorGastoComImposto,
      'percentualDeVendaAtra': percentualDeVendaAtra,
      'valorMinimo': valorMinimo,
      'custoDaEmissao': custoDaEmissao,
      'porcentagem': porcentagem,
      'emailResponsavel': emailResponsavel,
      'nomeResponsavel': nomeResponsavel,
      'telefoneResponsavel': telefoneResponsavel,
      'cpfOuCnpjResponsavel': cpfOuCnpjResponsavel,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsercadastroPessoaJuridicaRecordDocumentEquality
    implements Equality<UsercadastroPessoaJuridicaRecord> {
  const UsercadastroPessoaJuridicaRecordDocumentEquality();

  @override
  bool equals(UsercadastroPessoaJuridicaRecord? e1,
      UsercadastroPessoaJuridicaRecord? e2) {
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
        e1?.capitalSocialInicial == e2?.capitalSocialInicial &&
        e1?.patrimonioLiquido == e2?.patrimonioLiquido &&
        e1?.valorAlugadoFinanciado == e2?.valorAlugadoFinanciado &&
        e1?.exportacao == e2?.exportacao &&
        e1?.localSede == e2?.localSede &&
        e1?.pmv == e2?.pmv &&
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
        e1?.userAPI == e2?.userAPI &&
        e1?.ispb == e2?.ispb &&
        e1?.faturamentoAnual == e2?.faturamentoAnual &&
        e1?.margemMediaDeLucroBruto == e2?.margemMediaDeLucroBruto &&
        e1?.custoComFornecedores == e2?.custoComFornecedores &&
        e1?.numeroDeFuncionarios == e2?.numeroDeFuncionarios &&
        e1?.valorDaFolhaDePagamento == e2?.valorDaFolhaDePagamento &&
        e1?.valorGastoComImposto == e2?.valorGastoComImposto &&
        e1?.percentualDeVendaAtra == e2?.percentualDeVendaAtra &&
        e1?.valorMinimo == e2?.valorMinimo &&
        e1?.custoDaEmissao == e2?.custoDaEmissao &&
        e1?.porcentagem == e2?.porcentagem &&
        e1?.emailResponsavel == e2?.emailResponsavel &&
        e1?.nomeResponsavel == e2?.nomeResponsavel &&
        e1?.telefoneResponsavel == e2?.telefoneResponsavel &&
        e1?.cpfOuCnpjResponsavel == e2?.cpfOuCnpjResponsavel;
  }

  @override
  int hash(UsercadastroPessoaJuridicaRecord? e) => const ListEquality().hash([
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
        e?.capitalSocialInicial,
        e?.patrimonioLiquido,
        e?.valorAlugadoFinanciado,
        e?.exportacao,
        e?.localSede,
        e?.pmv,
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
        e?.userAPI,
        e?.ispb,
        e?.faturamentoAnual,
        e?.margemMediaDeLucroBruto,
        e?.custoComFornecedores,
        e?.numeroDeFuncionarios,
        e?.valorDaFolhaDePagamento,
        e?.valorGastoComImposto,
        e?.percentualDeVendaAtra,
        e?.valorMinimo,
        e?.custoDaEmissao,
        e?.porcentagem,
        e?.emailResponsavel,
        e?.nomeResponsavel,
        e?.telefoneResponsavel,
        e?.cpfOuCnpjResponsavel
      ]);

  @override
  bool isValidKey(Object? o) => o is UsercadastroPessoaJuridicaRecord;
}
