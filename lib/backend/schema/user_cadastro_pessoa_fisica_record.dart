import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCadastroPessoaFisicaRecord extends FirestoreRecord {
  UserCadastroPessoaFisicaRecord._(
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

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "estadoCivil" field.
  String? _estadoCivil;
  String get estadoCivil => _estadoCivil ?? '';
  bool hasEstadoCivil() => _estadoCivil != null;

  // "dataNasc" field.
  String? _dataNasc;
  String get dataNasc => _dataNasc ?? '';
  bool hasDataNasc() => _dataNasc != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "nomeMae" field.
  String? _nomeMae;
  String get nomeMae => _nomeMae ?? '';
  bool hasNomeMae() => _nomeMae != null;

  // "nomePai" field.
  String? _nomePai;
  String get nomePai => _nomePai ?? '';
  bool hasNomePai() => _nomePai != null;

  // "PaisNasc" field.
  String? _paisNasc;
  String get paisNasc => _paisNasc ?? '';
  bool hasPaisNasc() => _paisNasc != null;

  // "telCelular" field.
  String? _telCelular;
  String get telCelular => _telCelular ?? '';
  bool hasTelCelular() => _telCelular != null;

  // "telOpcional" field.
  String? _telOpcional;
  String get telOpcional => _telOpcional ?? '';
  bool hasTelOpcional() => _telOpcional != null;

  // "tipoDoc" field.
  String? _tipoDoc;
  String get tipoDoc => _tipoDoc ?? '';
  bool hasTipoDoc() => _tipoDoc != null;

  // "docIdentidade" field.
  String? _docIdentidade;
  String get docIdentidade => _docIdentidade ?? '';
  bool hasDocIdentidade() => _docIdentidade != null;

  // "dataEmissao" field.
  String? _dataEmissao;
  String get dataEmissao => _dataEmissao ?? '';
  bool hasDataEmissao() => _dataEmissao != null;

  // "dataExpiracao" field.
  String? _dataExpiracao;
  String get dataExpiracao => _dataExpiracao ?? '';
  bool hasDataExpiracao() => _dataExpiracao != null;

  // "pep" field.
  String? _pep;
  String get pep => _pep ?? '';
  bool hasPep() => _pep != null;

  // "emissorUF" field.
  String? _emissorUF;
  String get emissorUF => _emissorUF ?? '';
  bool hasEmissorUF() => _emissorUF != null;

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

  // "tipoResidencia" field.
  String? _tipoResidencia;
  String get tipoResidencia => _tipoResidencia ?? '';
  bool hasTipoResidencia() => _tipoResidencia != null;

  // "nomeEmpresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  bool hasNomeEmpresa() => _nomeEmpresa != null;

  // "cnpjEmpresa" field.
  String? _cnpjEmpresa;
  String get cnpjEmpresa => _cnpjEmpresa ?? '';
  bool hasCnpjEmpresa() => _cnpjEmpresa != null;

  // "cnae" field.
  String? _cnae;
  String get cnae => _cnae ?? '';
  bool hasCnae() => _cnae != null;

  // "naturezaOcupacao" field.
  String? _naturezaOcupacao;
  String get naturezaOcupacao => _naturezaOcupacao ?? '';
  bool hasNaturezaOcupacao() => _naturezaOcupacao != null;

  // "ocupacao" field.
  String? _ocupacao;
  String get ocupacao => _ocupacao ?? '';
  bool hasOcupacao() => _ocupacao != null;

  // "salarioLiquido" field.
  String? _salarioLiquido;
  String get salarioLiquido => _salarioLiquido ?? '';
  bool hasSalarioLiquido() => _salarioLiquido != null;

  // "outroRenda" field.
  String? _outroRenda;
  String get outroRenda => _outroRenda ?? '';
  bool hasOutroRenda() => _outroRenda != null;

  // "dataAdmissao" field.
  String? _dataAdmissao;
  String get dataAdmissao => _dataAdmissao ?? '';
  bool hasDataAdmissao() => _dataAdmissao != null;

  // "conjugeNome" field.
  String? _conjugeNome;
  String get conjugeNome => _conjugeNome ?? '';
  bool hasConjugeNome() => _conjugeNome != null;

  // "conjugeCpf" field.
  String? _conjugeCpf;
  String get conjugeCpf => _conjugeCpf ?? '';
  bool hasConjugeCpf() => _conjugeCpf != null;

  // "conjugeCnpj" field.
  String? _conjugeCnpj;
  String get conjugeCnpj => _conjugeCnpj ?? '';
  bool hasConjugeCnpj() => _conjugeCnpj != null;

  // "conjugeOcupacao" field.
  String? _conjugeOcupacao;
  String get conjugeOcupacao => _conjugeOcupacao ?? '';
  bool hasConjugeOcupacao() => _conjugeOcupacao != null;

  // "conjugeTel" field.
  String? _conjugeTel;
  String get conjugeTel => _conjugeTel ?? '';
  bool hasConjugeTel() => _conjugeTel != null;

  // "conjugeDataNasc" field.
  String? _conjugeDataNasc;
  String get conjugeDataNasc => _conjugeDataNasc ?? '';
  bool hasConjugeDataNasc() => _conjugeDataNasc != null;

  // "conjugeSalario" field.
  String? _conjugeSalario;
  String get conjugeSalario => _conjugeSalario ?? '';
  bool hasConjugeSalario() => _conjugeSalario != null;

  // "conjugeOutraRenda" field.
  String? _conjugeOutraRenda;
  String get conjugeOutraRenda => _conjugeOutraRenda ?? '';
  bool hasConjugeOutraRenda() => _conjugeOutraRenda != null;

  // "nacionalidade" field.
  String? _nacionalidade;
  String get nacionalidade => _nacionalidade ?? '';
  bool hasNacionalidade() => _nacionalidade != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "userAPI" field.
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
    _cpf = snapshotData['cpf'] as String?;
    _estadoCivil = snapshotData['estadoCivil'] as String?;
    _dataNasc = snapshotData['dataNasc'] as String?;
    _sexo = snapshotData['sexo'] as String?;
    _nomeMae = snapshotData['nomeMae'] as String?;
    _nomePai = snapshotData['nomePai'] as String?;
    _paisNasc = snapshotData['PaisNasc'] as String?;
    _telCelular = snapshotData['telCelular'] as String?;
    _telOpcional = snapshotData['telOpcional'] as String?;
    _tipoDoc = snapshotData['tipoDoc'] as String?;
    _docIdentidade = snapshotData['docIdentidade'] as String?;
    _dataEmissao = snapshotData['dataEmissao'] as String?;
    _dataExpiracao = snapshotData['dataExpiracao'] as String?;
    _pep = snapshotData['pep'] as String?;
    _emissorUF = snapshotData['emissorUF'] as String?;
    _cep = snapshotData['cep'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _complemento = snapshotData['complemento'] as String?;
    _uf = snapshotData['uf'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _numero = snapshotData['numero'] as String?;
    _tipoResidencia = snapshotData['tipoResidencia'] as String?;
    _nomeEmpresa = snapshotData['nomeEmpresa'] as String?;
    _cnpjEmpresa = snapshotData['cnpjEmpresa'] as String?;
    _cnae = snapshotData['cnae'] as String?;
    _naturezaOcupacao = snapshotData['naturezaOcupacao'] as String?;
    _ocupacao = snapshotData['ocupacao'] as String?;
    _salarioLiquido = snapshotData['salarioLiquido'] as String?;
    _outroRenda = snapshotData['outroRenda'] as String?;
    _dataAdmissao = snapshotData['dataAdmissao'] as String?;
    _conjugeNome = snapshotData['conjugeNome'] as String?;
    _conjugeCpf = snapshotData['conjugeCpf'] as String?;
    _conjugeCnpj = snapshotData['conjugeCnpj'] as String?;
    _conjugeOcupacao = snapshotData['conjugeOcupacao'] as String?;
    _conjugeTel = snapshotData['conjugeTel'] as String?;
    _conjugeDataNasc = snapshotData['conjugeDataNasc'] as String?;
    _conjugeSalario = snapshotData['conjugeSalario'] as String?;
    _conjugeOutraRenda = snapshotData['conjugeOutraRenda'] as String?;
    _nacionalidade = snapshotData['nacionalidade'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _userAPI = snapshotData['userAPI'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userCadastroPessoaFisica');

  static Stream<UserCadastroPessoaFisicaRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => UserCadastroPessoaFisicaRecord.fromSnapshot(s));

  static Future<UserCadastroPessoaFisicaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserCadastroPessoaFisicaRecord.fromSnapshot(s));

  static UserCadastroPessoaFisicaRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      UserCadastroPessoaFisicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCadastroPessoaFisicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCadastroPessoaFisicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCadastroPessoaFisicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCadastroPessoaFisicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCadastroPessoaFisicaRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? cpf,
  String? estadoCivil,
  String? dataNasc,
  String? sexo,
  String? nomeMae,
  String? nomePai,
  String? paisNasc,
  String? telCelular,
  String? telOpcional,
  String? tipoDoc,
  String? docIdentidade,
  String? dataEmissao,
  String? dataExpiracao,
  String? pep,
  String? emissorUF,
  String? cep,
  String? endereco,
  String? cidade,
  String? complemento,
  String? uf,
  String? bairro,
  String? numero,
  String? tipoResidencia,
  String? nomeEmpresa,
  String? cnpjEmpresa,
  String? cnae,
  String? naturezaOcupacao,
  String? ocupacao,
  String? salarioLiquido,
  String? outroRenda,
  String? dataAdmissao,
  String? conjugeNome,
  String? conjugeCpf,
  String? conjugeCnpj,
  String? conjugeOcupacao,
  String? conjugeTel,
  String? conjugeDataNasc,
  String? conjugeSalario,
  String? conjugeOutraRenda,
  String? nacionalidade,
  DocumentReference? usuario,
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
      'cpf': cpf,
      'estadoCivil': estadoCivil,
      'dataNasc': dataNasc,
      'sexo': sexo,
      'nomeMae': nomeMae,
      'nomePai': nomePai,
      'PaisNasc': paisNasc,
      'telCelular': telCelular,
      'telOpcional': telOpcional,
      'tipoDoc': tipoDoc,
      'docIdentidade': docIdentidade,
      'dataEmissao': dataEmissao,
      'dataExpiracao': dataExpiracao,
      'pep': pep,
      'emissorUF': emissorUF,
      'cep': cep,
      'endereco': endereco,
      'cidade': cidade,
      'complemento': complemento,
      'uf': uf,
      'bairro': bairro,
      'numero': numero,
      'tipoResidencia': tipoResidencia,
      'nomeEmpresa': nomeEmpresa,
      'cnpjEmpresa': cnpjEmpresa,
      'cnae': cnae,
      'naturezaOcupacao': naturezaOcupacao,
      'ocupacao': ocupacao,
      'salarioLiquido': salarioLiquido,
      'outroRenda': outroRenda,
      'dataAdmissao': dataAdmissao,
      'conjugeNome': conjugeNome,
      'conjugeCpf': conjugeCpf,
      'conjugeCnpj': conjugeCnpj,
      'conjugeOcupacao': conjugeOcupacao,
      'conjugeTel': conjugeTel,
      'conjugeDataNasc': conjugeDataNasc,
      'conjugeSalario': conjugeSalario,
      'conjugeOutraRenda': conjugeOutraRenda,
      'nacionalidade': nacionalidade,
      'usuario': usuario,
      'userAPI': userAPI,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCadastroPessoaFisicaRecordDocumentEquality
    implements Equality<UserCadastroPessoaFisicaRecord> {
  const UserCadastroPessoaFisicaRecordDocumentEquality();

  @override
  bool equals(
      UserCadastroPessoaFisicaRecord? e1, UserCadastroPessoaFisicaRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.cpf == e2?.cpf &&
        e1?.estadoCivil == e2?.estadoCivil &&
        e1?.dataNasc == e2?.dataNasc &&
        e1?.sexo == e2?.sexo &&
        e1?.nomeMae == e2?.nomeMae &&
        e1?.nomePai == e2?.nomePai &&
        e1?.paisNasc == e2?.paisNasc &&
        e1?.telCelular == e2?.telCelular &&
        e1?.telOpcional == e2?.telOpcional &&
        e1?.tipoDoc == e2?.tipoDoc &&
        e1?.docIdentidade == e2?.docIdentidade &&
        e1?.dataEmissao == e2?.dataEmissao &&
        e1?.dataExpiracao == e2?.dataExpiracao &&
        e1?.pep == e2?.pep &&
        e1?.emissorUF == e2?.emissorUF &&
        e1?.cep == e2?.cep &&
        e1?.endereco == e2?.endereco &&
        e1?.cidade == e2?.cidade &&
        e1?.complemento == e2?.complemento &&
        e1?.uf == e2?.uf &&
        e1?.bairro == e2?.bairro &&
        e1?.numero == e2?.numero &&
        e1?.tipoResidencia == e2?.tipoResidencia &&
        e1?.nomeEmpresa == e2?.nomeEmpresa &&
        e1?.cnpjEmpresa == e2?.cnpjEmpresa &&
        e1?.cnae == e2?.cnae &&
        e1?.naturezaOcupacao == e2?.naturezaOcupacao &&
        e1?.ocupacao == e2?.ocupacao &&
        e1?.salarioLiquido == e2?.salarioLiquido &&
        e1?.outroRenda == e2?.outroRenda &&
        e1?.dataAdmissao == e2?.dataAdmissao &&
        e1?.conjugeNome == e2?.conjugeNome &&
        e1?.conjugeCpf == e2?.conjugeCpf &&
        e1?.conjugeCnpj == e2?.conjugeCnpj &&
        e1?.conjugeOcupacao == e2?.conjugeOcupacao &&
        e1?.conjugeTel == e2?.conjugeTel &&
        e1?.conjugeDataNasc == e2?.conjugeDataNasc &&
        e1?.conjugeSalario == e2?.conjugeSalario &&
        e1?.conjugeOutraRenda == e2?.conjugeOutraRenda &&
        e1?.nacionalidade == e2?.nacionalidade &&
        e1?.usuario == e2?.usuario &&
        e1?.userAPI == e2?.userAPI;
  }

  @override
  int hash(UserCadastroPessoaFisicaRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.cpf,
        e?.estadoCivil,
        e?.dataNasc,
        e?.sexo,
        e?.nomeMae,
        e?.nomePai,
        e?.paisNasc,
        e?.telCelular,
        e?.telOpcional,
        e?.tipoDoc,
        e?.docIdentidade,
        e?.dataEmissao,
        e?.dataExpiracao,
        e?.pep,
        e?.emissorUF,
        e?.cep,
        e?.endereco,
        e?.cidade,
        e?.complemento,
        e?.uf,
        e?.bairro,
        e?.numero,
        e?.tipoResidencia,
        e?.nomeEmpresa,
        e?.cnpjEmpresa,
        e?.cnae,
        e?.naturezaOcupacao,
        e?.ocupacao,
        e?.salarioLiquido,
        e?.outroRenda,
        e?.dataAdmissao,
        e?.conjugeNome,
        e?.conjugeCpf,
        e?.conjugeCnpj,
        e?.conjugeOcupacao,
        e?.conjugeTel,
        e?.conjugeDataNasc,
        e?.conjugeSalario,
        e?.conjugeOutraRenda,
        e?.nacionalidade,
        e?.usuario,
        e?.userAPI
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCadastroPessoaFisicaRecord;
}
