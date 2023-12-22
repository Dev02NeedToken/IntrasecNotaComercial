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

List<double> calculaPrestacoes(double saldoDevedorFinal, double jurosMensal,
    double valorParcela, int prestacoes) {
  List<List<double>> listaValores = [];
  for (int i = 0; i <= prestacoes + 1; i++) {
    if (i == 0 || i == 1) {
      List<double> valores = [saldoDevedorFinal, 0, 0, 0];
      listaValores.add(valores);
    } else {
      List<double> valores = [];
      double valorJuros = saldoDevedorFinal * jurosMensal;
      double amortizacao = valorParcela - valorJuros;
      double valorSaldoFinal = saldoDevedorFinal - amortizacao;
      if (valorSaldoFinal >= 0) {
        valores.add(valorSaldoFinal);
      } else {
        valores.add(0);
      }
      valores.add(amortizacao);
      valores.add(valorJuros);
      valores.add(valorParcela);
      saldoDevedorFinal = valores[0];
      listaValores.add(valores);
    }
  }
  return listaValores;
}

void main() {
  double saldoDevedorFinal = 10000.0;
  double jurosMensal = 0.02;
  int prestacoes = 12;
  double valorParcela = 945.60;
  List<List<double>> valores = calculaPrestacoes(
      saldoDevedorFinal, jurosMensal, valorParcela, prestacoes);
  print(valores);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
