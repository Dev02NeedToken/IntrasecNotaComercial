import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CadastroOperacoesRecord extends FirestoreRecord {
  CadastroOperacoesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tomador" field.
  String? _tomador;
  String get tomador => _tomador ?? '';
  bool hasTomador() => _tomador != null;

  // "tipoDeLiquidacao" field.
  String? _tipoDeLiquidacao;
  String get tipoDeLiquidacao => _tipoDeLiquidacao ?? '';
  bool hasTipoDeLiquidacao() => _tipoDeLiquidacao != null;

  // "contaDeLiquidacao" field.
  String? _contaDeLiquidacao;
  String get contaDeLiquidacao => _contaDeLiquidacao ?? '';
  bool hasContaDeLiquidacao() => _contaDeLiquidacao != null;

  // "registradoradeRecebiveis" field.
  bool? _registradoradeRecebiveis;
  bool get registradoradeRecebiveis => _registradoradeRecebiveis ?? false;
  bool hasRegistradoradeRecebiveis() => _registradoradeRecebiveis != null;

  // "cessaoemLote" field.
  bool? _cessaoemLote;
  bool get cessaoemLote => _cessaoemLote ?? false;
  bool hasCessaoemLote() => _cessaoemLote != null;

  // "obersevacoes" field.
  String? _obersevacoes;
  String get obersevacoes => _obersevacoes ?? '';
  bool hasObersevacoes() => _obersevacoes != null;

  // "fundoCessionario" field.
  String? _fundoCessionario;
  String get fundoCessionario => _fundoCessionario ?? '';
  bool hasFundoCessionario() => _fundoCessionario != null;

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "user_API" field.
  DocumentReference? _userAPI;
  DocumentReference? get userAPI => _userAPI;
  bool hasUserAPI() => _userAPI != null;

  void _initializeFields() {
    _tomador = snapshotData['tomador'] as String?;
    _tipoDeLiquidacao = snapshotData['tipoDeLiquidacao'] as String?;
    _contaDeLiquidacao = snapshotData['contaDeLiquidacao'] as String?;
    _registradoradeRecebiveis =
        snapshotData['registradoradeRecebiveis'] as bool?;
    _cessaoemLote = snapshotData['cessaoemLote'] as bool?;
    _obersevacoes = snapshotData['obersevacoes'] as String?;
    _fundoCessionario = snapshotData['fundoCessionario'] as String?;
    _produto = snapshotData['produto'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _userAPI = snapshotData['user_API'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cadastroOperacoes');

  static Stream<CadastroOperacoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CadastroOperacoesRecord.fromSnapshot(s));

  static Future<CadastroOperacoesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CadastroOperacoesRecord.fromSnapshot(s));

  static CadastroOperacoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CadastroOperacoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CadastroOperacoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CadastroOperacoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CadastroOperacoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CadastroOperacoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCadastroOperacoesRecordData({
  String? tomador,
  String? tipoDeLiquidacao,
  String? contaDeLiquidacao,
  bool? registradoradeRecebiveis,
  bool? cessaoemLote,
  String? obersevacoes,
  String? fundoCessionario,
  String? produto,
  DocumentReference? usuario,
  DocumentReference? userAPI,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tomador': tomador,
      'tipoDeLiquidacao': tipoDeLiquidacao,
      'contaDeLiquidacao': contaDeLiquidacao,
      'registradoradeRecebiveis': registradoradeRecebiveis,
      'cessaoemLote': cessaoemLote,
      'obersevacoes': obersevacoes,
      'fundoCessionario': fundoCessionario,
      'produto': produto,
      'usuario': usuario,
      'user_API': userAPI,
    }.withoutNulls,
  );

  return firestoreData;
}

class CadastroOperacoesRecordDocumentEquality
    implements Equality<CadastroOperacoesRecord> {
  const CadastroOperacoesRecordDocumentEquality();

  @override
  bool equals(CadastroOperacoesRecord? e1, CadastroOperacoesRecord? e2) {
    return e1?.tomador == e2?.tomador &&
        e1?.tipoDeLiquidacao == e2?.tipoDeLiquidacao &&
        e1?.contaDeLiquidacao == e2?.contaDeLiquidacao &&
        e1?.registradoradeRecebiveis == e2?.registradoradeRecebiveis &&
        e1?.cessaoemLote == e2?.cessaoemLote &&
        e1?.obersevacoes == e2?.obersevacoes &&
        e1?.fundoCessionario == e2?.fundoCessionario &&
        e1?.produto == e2?.produto &&
        e1?.usuario == e2?.usuario &&
        e1?.userAPI == e2?.userAPI;
  }

  @override
  int hash(CadastroOperacoesRecord? e) => const ListEquality().hash([
        e?.tomador,
        e?.tipoDeLiquidacao,
        e?.contaDeLiquidacao,
        e?.registradoradeRecebiveis,
        e?.cessaoemLote,
        e?.obersevacoes,
        e?.fundoCessionario,
        e?.produto,
        e?.usuario,
        e?.userAPI
      ]);

  @override
  bool isValidKey(Object? o) => o is CadastroOperacoesRecord;
}
