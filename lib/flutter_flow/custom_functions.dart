import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? dataAtualizada(
  DateTime? dataAtual,
  String? meses,
) {
  // make a sum with date plus the value entered by the user
  if (dataAtual == null || meses == null) {
    return null;
  }

  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  final DateTime dataAtualizada =
      dataAtual.add(Duration(days: int.parse(meses) * 30));
  return formatter.format(dataAtualizada);
}

String? dataBD(
  DateTime? dataAtual,
  String? meses,
) {
  // make a sum with date plus the value entered by the user
  if (dataAtual == null || meses == null) {
    return null;
  }

  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final DateTime dataAtualizada =
      dataAtual.add(Duration(days: int.parse(meses) * 30));
  return formatter.format(dataAtualizada);
}

String? dataEmissaoMaisUm(
  DateTime? dataAtual,
  String? meses,
) {
  // make a sum with date plus the value entered by the user
  if (dataAtual == null || meses == null) {
    return null;
  }

  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final DateTime dataAtualizada =
      dataAtual.add(Duration(days: int.parse(meses) * 30));
  return formatter.format(dataAtualizada);
}

String? pegalinkconvertbase64() {
  // Enter link that contains a file, download it, return the document name and convert it to base64
  String url =
      'https://storage.googleapis.com/doc-generated/tc_1_ad_administracao_e_participacoes_v7_log824bm.docx?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=documentero-65e4d%40appspot.gserviceaccount.com%2F20231101%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20231101T204018Z&X-Goog-Expires=601&X-Goog-SignedHeaders=host&response-content-disposition=attachment&X-Goog-Signature=02705f7e202bf4e062f5268bdbd6f0072b6e7e9d5ff6a6f85cd5b7c26eb56ad1b4bcc11e496114db42df3b2ba72a23b7b54f34af9e206f140ade39f687187d43ddb78160fc2c8e7227127f049cea4e2c080af11e83128fe94c04229b62058d89b6695ab8e0c12e3fc8cc0bd63fc1e9ef49c05c7ce5b3be23c7e0eb13024f9bf66703a5c8be9245e76f24c1258ed23c7c0f00cab70353391a30c3a05b55be214cfac2e6031ec87250ae72d670911e0b7f4cc027e3ff3b07128efd565564d68b214c1ad21e999e5ceb1e0ccaac84f1bf14f767642120a7e07c0ea0c488995a04518e0ca1898e89b83e8fff165e28df1f717ac4dd857e34349f9a83d90b55ded7da';

  // Extracting the document name from the URL
  String documentName = url.split('/').last.split('?').first;

  // Converting the document name to base64
  String base64DocumentName = base64Encode(utf8.encode(documentName));

  return base64DocumentName;
}

String? substituirEspaco() {
  // replace white space with sign
  String? text = 'Replace white space with sign';
  return text.replaceAll(' ', '_');
}
