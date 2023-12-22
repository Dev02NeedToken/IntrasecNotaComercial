// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FluxopagamentosStruct extends FFFirebaseStruct {
  FluxopagamentosStruct({
    List<int>? pgto,
    List<double>? pagamento,
    double? pg,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pgto = pgto,
        _pagamento = pagamento,
        _pg = pg,
        super(firestoreUtilData);

  // "pgto" field.
  List<int>? _pgto;
  List<int> get pgto => _pgto ?? const [];
  set pgto(List<int>? val) => _pgto = val;
  void updatePgto(Function(List<int>) updateFn) => updateFn(_pgto ??= []);
  bool hasPgto() => _pgto != null;

  // "pagamento" field.
  List<double>? _pagamento;
  List<double> get pagamento => _pagamento ?? const [];
  set pagamento(List<double>? val) => _pagamento = val;
  void updatePagamento(Function(List<double>) updateFn) =>
      updateFn(_pagamento ??= []);
  bool hasPagamento() => _pagamento != null;

  // "pg" field.
  double? _pg;
  double get pg => _pg ?? 0.0;
  set pg(double? val) => _pg = val;
  void incrementPg(double amount) => _pg = pg + amount;
  bool hasPg() => _pg != null;

  static FluxopagamentosStruct fromMap(Map<String, dynamic> data) =>
      FluxopagamentosStruct(
        pgto: getDataList(data['pgto']),
        pagamento: getDataList(data['pagamento']),
        pg: castToType<double>(data['pg']),
      );

  static FluxopagamentosStruct? maybeFromMap(dynamic data) => data is Map
      ? FluxopagamentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pgto': _pgto,
        'pagamento': _pagamento,
        'pg': _pg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pgto': serializeParam(
          _pgto,
          ParamType.int,
          true,
        ),
        'pagamento': serializeParam(
          _pagamento,
          ParamType.double,
          true,
        ),
        'pg': serializeParam(
          _pg,
          ParamType.double,
        ),
      }.withoutNulls;

  static FluxopagamentosStruct fromSerializableMap(Map<String, dynamic> data) =>
      FluxopagamentosStruct(
        pgto: deserializeParam<int>(
          data['pgto'],
          ParamType.int,
          true,
        ),
        pagamento: deserializeParam<double>(
          data['pagamento'],
          ParamType.double,
          true,
        ),
        pg: deserializeParam(
          data['pg'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FluxopagamentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FluxopagamentosStruct &&
        listEquality.equals(pgto, other.pgto) &&
        listEquality.equals(pagamento, other.pagamento) &&
        pg == other.pg;
  }

  @override
  int get hashCode => const ListEquality().hash([pgto, pagamento, pg]);
}

FluxopagamentosStruct createFluxopagamentosStruct({
  double? pg,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FluxopagamentosStruct(
      pg: pg,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FluxopagamentosStruct? updateFluxopagamentosStruct(
  FluxopagamentosStruct? fluxopagamentos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fluxopagamentos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFluxopagamentosStructData(
  Map<String, dynamic> firestoreData,
  FluxopagamentosStruct? fluxopagamentos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fluxopagamentos == null) {
    return;
  }
  if (fluxopagamentos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fluxopagamentos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fluxopagamentosData =
      getFluxopagamentosFirestoreData(fluxopagamentos, forFieldValue);
  final nestedData =
      fluxopagamentosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fluxopagamentos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFluxopagamentosFirestoreData(
  FluxopagamentosStruct? fluxopagamentos, [
  bool forFieldValue = false,
]) {
  if (fluxopagamentos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fluxopagamentos.toMap());

  // Add any Firestore field values
  fluxopagamentos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFluxopagamentosListFirestoreData(
  List<FluxopagamentosStruct>? fluxopagamentoss,
) =>
    fluxopagamentoss
        ?.map((e) => getFluxopagamentosFirestoreData(e, true))
        .toList() ??
    [];
