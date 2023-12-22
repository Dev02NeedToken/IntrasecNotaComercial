// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> valorSolicitadoXtaxaEscriturado(
  double valorSolicitado,
  double taxaEscriturado,
) async {
  // Create a code that calculate the sum of to values number1 and number2
  double mult = valorSolicitado * (taxaEscriturado / 100);
  return mult;
}
