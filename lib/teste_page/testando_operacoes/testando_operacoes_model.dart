import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'testando_operacoes_widget.dart' show TestandoOperacoesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestandoOperacoesModel extends FlutterFlowModel<TestandoOperacoesWidget> {
  ///  Local state fields for this page.

  FluxopagamentosStruct? pgto;
  void updatePgtoStruct(Function(FluxopagamentosStruct) updateFn) =>
      updateFn(pgto ??= FluxopagamentosStruct());

  FluxopagamentosStruct? pagamento;
  void updatePagamentoStruct(Function(FluxopagamentosStruct) updateFn) =>
      updateFn(pagamento ??= FluxopagamentosStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  Future pDFe(BuildContext context) async {}

  /// Additional helper methods are added here.
}
