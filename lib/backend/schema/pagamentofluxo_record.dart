import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagamentofluxoRecord extends FirestoreRecord {
  PagamentofluxoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fluxodepagamento" field.
  List<int>? _fluxodepagamento;
  List<int> get fluxodepagamento => _fluxodepagamento ?? const [];
  bool hasFluxodepagamento() => _fluxodepagamento != null;

  void _initializeFields() {
    _fluxodepagamento = getDataList(snapshotData['fluxodepagamento']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pagamentofluxo');

  static Stream<PagamentofluxoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagamentofluxoRecord.fromSnapshot(s));

  static Future<PagamentofluxoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagamentofluxoRecord.fromSnapshot(s));

  static PagamentofluxoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PagamentofluxoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagamentofluxoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagamentofluxoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagamentofluxoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagamentofluxoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagamentofluxoRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class PagamentofluxoRecordDocumentEquality
    implements Equality<PagamentofluxoRecord> {
  const PagamentofluxoRecordDocumentEquality();

  @override
  bool equals(PagamentofluxoRecord? e1, PagamentofluxoRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.fluxodepagamento, e2?.fluxodepagamento);
  }

  @override
  int hash(PagamentofluxoRecord? e) =>
      const ListEquality().hash([e?.fluxodepagamento]);

  @override
  bool isValidKey(Object? o) => o is PagamentofluxoRecord;
}
