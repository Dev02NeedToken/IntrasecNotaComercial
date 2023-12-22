import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math' as math;
import 'teste_op_widget.dart' show TesteOpWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TesteOpModel extends FlutterFlowModel<TesteOpWidget> {
  ///  Local state fields for this page.

  double numLoop = 0.0;

  List<double> itemList = [];
  void addToItemList(double item) => itemList.add(item);
  void removeFromItemList(double item) => itemList.remove(item);
  void removeAtIndexFromItemList(int index) => itemList.removeAt(index);
  void insertAtIndexInItemList(int index, double item) =>
      itemList.insert(index, item);
  void updateItemListAtIndex(int index, Function(double) updateFn) =>
      itemList[index] = updateFn(itemList[index]);

  double pagamento = 0.0;

  String vencimento = '';

  double saldoDevedor = 0.0;

  double juros = 0.0;

  double amortizacao = 0.0;

  double calJurosAnual = 0.0;

  double jurosFluxo = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emprestimo widget.
  FocusNode? emprestimoFocusNode;
  TextEditingController? emprestimoController;
  String? Function(BuildContext, String?)? emprestimoControllerValidator;
  // State field(s) for taxaDeJurosMensal widget.
  FocusNode? taxaDeJurosMensalFocusNode;
  TextEditingController? taxaDeJurosMensalController;
  String? Function(BuildContext, String?)? taxaDeJurosMensalControllerValidator;
  // State field(s) for taxaDeJurosAnual widget.
  FocusNode? taxaDeJurosAnualFocusNode;
  TextEditingController? taxaDeJurosAnualController;
  String? Function(BuildContext, String?)? taxaDeJurosAnualControllerValidator;
  // State field(s) for Meses widget.
  FocusNode? mesesFocusNode;
  TextEditingController? mesesController;
  String? Function(BuildContext, String?)? mesesControllerValidator;
  // State field(s) for carencia widget.
  FocusNode? carenciaFocusNode;
  TextEditingController? carenciaController;
  String? Function(BuildContext, String?)? carenciaControllerValidator;
  // State field(s) for inflacao widget.
  FocusNode? inflacaoFocusNode;
  TextEditingController? inflacaoController;
  String? Function(BuildContext, String?)? inflacaoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    emprestimoFocusNode?.dispose();
    emprestimoController?.dispose();

    taxaDeJurosMensalFocusNode?.dispose();
    taxaDeJurosMensalController?.dispose();

    taxaDeJurosAnualFocusNode?.dispose();
    taxaDeJurosAnualController?.dispose();

    mesesFocusNode?.dispose();
    mesesController?.dispose();

    carenciaFocusNode?.dispose();
    carenciaController?.dispose();

    inflacaoFocusNode?.dispose();
    inflacaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
