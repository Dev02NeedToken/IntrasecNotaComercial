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

import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<void> gerarPDF(
  String? razaoSocial,
  String? Cnpj,
  String? numeroDaEmissao,
  String? numeroDeSerie,
  String? emissor,
  String? estado,
  String? dataEmissao,
) async {
  // pdf filling structure
  // Create a PDF document
  final pdf = pw.Document();

  /* pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      // Add a text widget to the page
      return pw.Center(
        child: pw.Text(
          "BOLETIM DE SUBSCRIÇÃO DA DA ${razaoSocial ?? "N/A"}",
        ),
      );
    },
  )); */

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) => pw.Center(
          child: pw.Text(
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${numeroDaEmissao ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE: ${numeroDeSerie ?? "N/A"}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) ${emissor ?? "N/A"}.\n'
              "\n"
              'Razão Social: ${razaoSocial ?? "N/A"} | CNPJ/ME: ${Cnpj ?? "N/A"}\n'
              "\n"
              'A Emissão e a celebração deste Termo Constitutivo de Nota Comercial da ${numeroDaEmissao ?? "N/A"} de Notas Comerciais, em '
              'Série Única, para Colocação Privada, da ${razaoSocial ?? "N/A"}. (Termo Constitutivo) são realizadas com base nas deliberações dos '
              'administradores da Emissora, conforme previsto no Parágrafo único, artigo 46 da Lei nº14.195, de 26 de agosto de 2021 (Lei '
              '14.195) e nos documentos societários da Emissora.\n'
              "\n"
              'I. RESUMO DA EMISSÃO \n'
              "\n"
              'Número da Emissão: ${numeroDaEmissao ?? "N/A"} | Série: ${numeroDeSerie ?? "N/A"} | Local de Emissão: ${estado} | Data de Emissão: ${dataEmissao} \n'
              'Data de Vencimento: | Valor Total da Emissão: | Valor Nominal Unitário: | Quantidade: \n'
              'Conversibilidade: Simples, ou seja, não conversíveis em quotas da Emissora.\n'
              'Custo da Emissão: {custoDaEmissao} a ser pago pelo Titular em nome do Emissor ao Escriturador, Custodiante e Agente Liquidante na conta corrente abaixo indicada, na data da liquidação das Notas Comerciais.\n'
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${razaoSocial ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE {numeroDeSerie}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) {emissor}.'
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${razaoSocial ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE {numeroDeSerie}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) {emissor}.')),
    ),
  );
  pdf.addPage(
    pw.Page(
      build: (pw.Context context) => pw.Center(
          child: pw.Text(
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${razaoSocial ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE {numeroDeSerie}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) {emissor}.'
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${razaoSocial ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE {numeroDeSerie}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) {emissor}.'
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${razaoSocial ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE {numeroDeSerie}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) {emissor}.'
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${razaoSocial ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE {numeroDeSerie}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) {emissor}.'
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${razaoSocial ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE {numeroDeSerie}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) {emissor}.'
              'TERMO CONSTITUTIVO DE NOTA COMERCIAL DA ${razaoSocial ?? "N/A"} EMISSÃO DE NOTAS COMERCIAIS, EM SÉRIE {numeroDeSerie}, PARA COLOCAÇÃO PRIVADA, DO(A) EMISSOR(A) {emissor}.')),
    ),
  );

  // Print the PDF document
  await Printing.layoutPdf(onLayout: (format) => pdf.save());
}
