import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipesRecord extends FirestoreRecord {
  RecipesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "baslik" field.
  String? _baslik;
  String get baslik => _baslik ?? '';
  bool hasBaslik() => _baslik != null;

  // "tarif" field.
  String? _tarif;
  String get tarif => _tarif ?? '';
  bool hasTarif() => _tarif != null;

  // "yazar" field.
  String? _yazar;
  String get yazar => _yazar ?? '';
  bool hasYazar() => _yazar != null;

  // "malzemeler" field.
  String? _malzemeler;
  String get malzemeler => _malzemeler ?? '';
  bool hasMalzemeler() => _malzemeler != null;

  // "kategori" field.
  String? _kategori;
  String get kategori => _kategori ?? '';
  bool hasKategori() => _kategori != null;

  void _initializeFields() {
    _baslik = snapshotData['baslik'] as String?;
    _tarif = snapshotData['tarif'] as String?;
    _yazar = snapshotData['yazar'] as String?;
    _malzemeler = snapshotData['malzemeler'] as String?;
    _kategori = snapshotData['kategori'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recipes');

  static Stream<RecipesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipesRecord.fromSnapshot(s));

  static Future<RecipesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipesRecord.fromSnapshot(s));

  static RecipesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecipesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecipesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecipesRecordData({
  String? baslik,
  String? tarif,
  String? yazar,
  String? malzemeler,
  String? kategori,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'baslik': baslik,
      'tarif': tarif,
      'yazar': yazar,
      'malzemeler': malzemeler,
      'kategori': kategori,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecipesRecordDocumentEquality implements Equality<RecipesRecord> {
  const RecipesRecordDocumentEquality();

  @override
  bool equals(RecipesRecord? e1, RecipesRecord? e2) {
    return e1?.baslik == e2?.baslik &&
        e1?.tarif == e2?.tarif &&
        e1?.yazar == e2?.yazar &&
        e1?.malzemeler == e2?.malzemeler &&
        e1?.kategori == e2?.kategori;
  }

  @override
  int hash(RecipesRecord? e) => const ListEquality()
      .hash([e?.baslik, e?.tarif, e?.yazar, e?.malzemeler, e?.kategori]);

  @override
  bool isValidKey(Object? o) => o is RecipesRecord;
}
